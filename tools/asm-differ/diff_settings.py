import os
import sys
import platform
from typing import Optional


def get_exe_suffix():
    if (system := platform.system()) == "Linux":
        return ""
    elif system == "Windows":
        return ".exe"
    else:
        raise RuntimeError("Platform not recognized.")


def env(name: str, default: Optional[str] = None) -> Optional[str]:
    return os.environ.get(name, default)


def apply(config, _):
    config["baseimg"] = "orig/GALE01/sys/main.dol"
    config["myimg"] = "build/GALE01/main.dol"
    config["mapfile"] = "build/GALE01/main.elf.MAP"
    config["source_directories"] = ["src", "asm"]
    config["arch"] = "ppc"
    config["map_format"] = "mw"
    config["build_dir"] = "build/GALE01/src"
    config["expected_dir"] = "build/GALE01/obj"
    config["make_command"] = ["ninja"]

    # TODO gc-wii-binutils
    objdump = f"tools/mwcc_compiler/powerpc-eabi-objdump{get_exe_suffix()}"
    if not os.path.exists(objdump):
        devkitpro = env("DEVKITPRO", "/opt/devkitpro")
        devkitppc = env("DEVKITPPC", f"{devkitpro}/devkitPPC")
        objdump = f"{devkitppc}/bin/powerpc-eabi-objdump{get_exe_suffix()}"
    if not os.path.exists(objdump):
        print(f"ERROR: could not find powerpc-eabi-objdump{get_exe_suffix()}", file=sys.stderr)
        sys.exit(1)
    config["objdump_executable"] = objdump
