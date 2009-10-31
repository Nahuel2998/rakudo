# Copyright (C) 2009, The Perl Foundation.
# $Id$

class Perl6::Compiler::Parameter;

has $!var_name;
has $!pos_slurpy;
has $!named_slurpy;
has $!optional;
has $!names;
has $!invocant;
has $!default;
has $!nom_type;
has $!cons_types;
has $!sub_signature;
has $!type_captures;

method var_name($var_name?) {
    if $var_name { $!var_name := $var_name }
    $!var_name
}

method sigil() {
    pir::substr($!var_name, 0, 1)
}

method pos_slurpy($pos_slurpy?) {
    if $pos_slurpy { $!pos_slurpy := $pos_slurpy }
    $!pos_slurpy
}

method named_slurpy($named_slurpy?) {
    if $named_slurpy { $!named_slurpy := $named_slurpy }
    $!named_slurpy
}

method optional($optional?) {
    if $optional { $!optional := $optional }
    $!optional
}

method names() {
    unless $!names { $!names := PAST::Node.new() }
    $!names
}

method invocant($invocant?) {
    if $invocant { $!invocant := $invocant }
    $!invocant
}

method default($default?) {
    if $default { $!default := $default }
    $!default
}

method nom_type($nom_type?) {
    if $nom_type { $!nom_type := $nom_type }
    $!nom_type
}

method cons_types() {
    unless $!cons_types { $!cons_types := PAST::Node.new() }
    $!cons_types
}

method sub_signature($sub_signature?) {
    if $sub_signature { $!sub_signature := $sub_signature }
    $!sub_signature
}

method type_captures() {
    unless $!type_captures { $!type_captures := PAST::Node.new() }
    $!type_captures
}
