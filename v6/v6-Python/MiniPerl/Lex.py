import ply.lex as lex

tokens = (
	'SQSTR',
	'IDENT',
	'LBRACE',
	'RBRACE',
	'WHITESPACE',
	'CLASS',
	'SEMICOLON',
)

t_SQSTR    = r"\'.*?[^\\]\'"
t_LBRACE   = r'{'
t_RBRACE   = r'}'
t_SEMICOLON = r';'

def t_IDENT(t):
	r'\w+'
	if t.value == 'class':
		t.type = 'CLASS'

def t_WHITESPACE(t):
	r'\s+'
	pass

def t_error(t):
	print "Illegal character '%s'" % t.value[0]
	t.lexer.skip(1)

lex.lex()
