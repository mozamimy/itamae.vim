" Vim syntax file
" Language: Itamae

if exists("b:current_syntax")
  finish
end

runtime! syntax/ruby.vim

syntax keyword resourceMethod directory execute file gem_package git group
syntax keyword resourceMethod http_request link local_ruby_block package
syntax keyword resourceMethod remote_directory remote_file service template user

syntax keyword actionMethod action user cwd path mode owner group contained containedin=rubyCurlyBlock,rubyDoBlock
syntax keyword actionMethod command content block package_name contained containedin=rubyCurlyBlock,rubyDoBlock
syntax keyword actionMethod gem_binary version source destination contained containedin=rubyCurlyBlock,rubyDoBlock
syntax keyword actionMethod repository revision recursive groupname contained containedin=rubyCurlyBlock,rubyDoBlock
syntax keyword actionMethod gid headers url link to force options contained containedin=rubyCurlyBlock,rubyDoBlock
syntax keyword actionMethod provider variables username home password contained containedin=rubyCurlyBlock,rubyDoBlock
syntax keyword actionMethod system_user uid shell create_home contained containedin=rubyCurlyBlock,rubyDoBlock

syntax keyword utilityMethod not_if only_if notifies subscribes contained containedin=rubyCurlyBlock,rubyDoBlock
syntax keyword utilityMethod run_command verify contained containedin=rubyCurlyBlock,rubyDoBlock

syntax keyword loadMethod include_recipe

syntax keyword itamaeVariable node

highlight default link resourceMethod Identifier
highlight default link actionMethod Identifier
highlight default link utilityMethod Identifier
highlight default link loadMethod Special
highlight default link itamaeVariable Identifier

let b:current_syntax = 'itamae'
