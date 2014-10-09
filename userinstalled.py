#!/usr/bin/env python

import subprocess
installed = set(line.split()[1] for line in subprocess.check_output(['pacgraph', '-c']).decode().splitlines()[3:])
base = set(subprocess.check_output(['pacman', '-Qgq', 'base', 'base-devel']).decode().split())
print('\n'.join(sorted(list(installed - base))))
