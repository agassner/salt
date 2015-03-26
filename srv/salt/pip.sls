python-pip:
  pkg.removed

pip:
  file.managed:
    - name: /usr/local/sbin/get-pip.py
    - source: https://raw.githubusercontent.com/pypa/pip/master/contrib/get-pip.py
    - source_hash: md5=add41078298d8111714c6b87636714f5

  cmd.run:
    - name: /usr/bin/python /usr/local/sbin/get-pip.py
    - unless: which pip
    - require:
      - file: /usr/local/sbin/get-pip.py
    - reload_modules: True