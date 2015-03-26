python-pip:
  pkg.removed

pip:
  file.managed:
    - name: /usr/local/sbin/get-pip.py
    - source: https://bootstrap.pypa.io/get-pip.py
    - require:
      - pkg: python

  cmd.run:
    - name: /usr/bin/python /usr/local/sbin/get-pip.py
    - unless: which pip
    - require:
      - pkg: python
      - file: /usr/local/sbin/get-pip.py
    - reload_modules: True