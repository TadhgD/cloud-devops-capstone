#!/usr/bin/env python
import click

@click.command()
def hello():
    click.echo('Hello, Udacity! This is my Capstone Project.')
    
if __name__ == '__main__':
    hello()
