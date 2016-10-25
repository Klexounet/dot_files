#!/usr/bin/env python
# -*- coding: utf-8 -*-

import argparse
import codecs
import matplotlib.pyplot as plt
import numpy as np
import os
import sys
import time
from tqdm import tqdm

def parse_args():
    """ Parse input arguments """
    parser = argparse.ArgumentParser(description="")
    parser.add_argument('arg', help='Description')
    parser.add_argument('arg_optional', help='Description', default=None, nargs='?')
    parser.add_argument('-f', '--flag', help='Description', action='store_true')
    args = parser.parse_args()
    return args

def main():

    return

if __name__ == '__main__':
    args = parse_args()

    main()
