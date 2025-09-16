class Object{
	public:
	
	enum Type{
		TNIL,
		TBOOLEAN,
		TNUMBER,
		TFUNCTION,
		TSTRING,
		TTABLE,
		TUSERDATA,
		TTHREAD
	}Kind;
	
	union{
		double dval;
		bool bval;
		Table* table;
		Function* fun;
		Thread* thread;
		String* str;
		UserData* udata;
	};
	
	Object(Type kind, double dval, bool bval, void* ptr){
		Kind = kind;
		switch(Kind){
			case TNIL:
				break;
			case TBOOLEAN:
				this->bval = bval;
				break;
			case TNUMBER:
				this->dval = dval;
				break;
			case TFUNCTION:
				fun = (Function*)ptr;
				break;
			case TSTRING:
				str = (String*)ptr;
				break;
			case TTABLE:
				table = (Table*)ptr;
				break;
			case TUSERDATA:
				udata = (UserData*)ptr;
				break;
			case TTHREAD:
				thread = (Thread*)ptr;
				break;
		}
	}
	
};