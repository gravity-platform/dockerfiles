#!/usr/bin/env python

import sys, subprocess

class Entrypoint:
    def main(self):
        if len(sys.argv) < 2:
            self.error()
        if sys.argv[1] not in ['git', 'hg', 'svn']:
            self.error()

        subprocess.call(['/usr/local/bin/jenkins-makejobs-' + sys.argv[1]] + sys.argv[2:] + ['/config.yml'])
    def error(self):
        print('  Usage: docker run -v `pwd`/config.yml:/config.yml gravity-platform/jenkins-autojobs <git|svn|hg> [autojobs-args]')
        sys.exit(2)


if __name__ == '__main__':
    Entrypoint().main()
