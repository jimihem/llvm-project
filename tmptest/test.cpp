//-cc1 -triple riscv32 -emit-obj -mrelax-all -dumpdir a- -disable-free -clear-ast-before-backend -main-file-name test.cpp -mrelocation-model static -mframe-pointer=all -fmath-errno -ffp-contract=on -fno-rounding-math -mconstructor-aliases -nostdsysteminc -target-cpu generic-rv32 -target-feature +m -target-feature +a -target-feature +c -target-feature -d -target-feature -e -target-feature -f -target-feature -h -target-feature -svinval -target-feature -svnapot -target-feature -svpbmt -target-feature -v -target-feature -xcvbitmanip -target-feature -xcvmac -target-feature -xsfcie -target-feature -xsfvcp -target-feature -xtheadba -target-feature -xtheadbb -target-feature -xtheadbs -target-feature -xtheadcmo -target-feature -xtheadcondmov -target-feature -xtheadfmemidx -target-feature -xtheadmac -target-feature -xtheadmemidx -target-feature -xtheadmempair -target-feature -xtheadsync -target-feature -xtheadvdot -target-feature -xventanacondops -target-feature -zawrs -target-feature -zba -target-feature -zbb -target-feature -zbc -target-feature -zbkb -target-feature -zbkc -target-feature -zbkx -target-feature -zbs -target-feature -zca -target-feature -zcb -target-feature -zcd -target-feature -zce -target-feature -zcf -target-feature -zcmp -target-feature -zcmt -target-feature -zdinx -target-feature -zfh -target-feature -zfhmin -target-feature -zfinx -target-feature -zhinx -target-feature -zhinxmin -target-feature -zicbom -target-feature -zicbop -target-feature -zicboz -target-feature -zicntr -target-feature -zicsr -target-feature -zifencei -target-feature -zihintpause -target-feature -zihpm -target-feature -zk -target-feature -zkn -target-feature -zknd -target-feature -zkne -target-feature -zknh -target-feature -zkr -target-feature -zks -target-feature -zksed -target-feature -zksh -target-feature -zkt -target-feature -zmmul -target-feature -zve32f -target-feature -zve32x -target-feature -zve64d -target-feature -zve64f -target-feature -zve64x -target-feature -zvfh -target-feature -zvl1024b -target-feature -zvl128b -target-feature -zvl16384b -target-feature -zvl2048b -target-feature -zvl256b -target-feature -zvl32768b -target-feature -zvl32b -target-feature -zvl4096b -target-feature -zvl512b -target-feature -zvl64b -target-feature -zvl65536b -target-feature -zvl8192b -target-feature -experimental-smaia -target-feature -experimental-ssaia -target-feature -experimental-zacas -target-feature -experimental-zfa -target-feature -experimental-zfbfmin -target-feature -experimental-zicond -target-feature -experimental-zihintntl -target-feature -experimental-ztso -target-feature -experimental-zvbb -target-feature -experimental-zvbc -target-feature -experimental-zvfbfmin -target-feature -experimental-zvfbfwma -target-feature -experimental-zvkg -target-feature -experimental-zvkn -target-feature -experimental-zvknc -target-feature -experimental-zvkned -target-feature -experimental-zvkng -target-feature -experimental-zvknha -target-feature -experimental-zvknhb -target-feature -experimental-zvks -target-feature -experimental-zvksc -target-feature -experimental-zvksed -target-feature -experimental-zvksg -target-feature -experimental-zvksh -target-feature -experimental-zvkt -target-feature +relax -target-feature -save-restore -target-abi ilp32 -msmall-data-limit 8 -debugger-tuning=gdb "-fcoverage-compilation-dir=C:\llvm-project-17.0.5.src\build\Debug\bin" -resource-dir "C:\llvm-project-17.0.5.src\build\Debug\lib\clang\17" -internal-isystem "C:\llvm-project-17.0.5.src\build\Debug\bin\..\lib\clang-runtimes\riscv32\include\c++\v1" -internal-isystem "C:\llvm-project-17.0.5.src\build\Debug\lib\clang\17\include" -internal-isystem "C:\llvm-project-17.0.5.src\build\Debug\bin\..\lib\clang-runtimes\riscv32\include" -fdeprecated-macro "-fdebug-compilation-dir=C:\llvm-project-17.0.5.src\build\Debug\bin" -ferror-limit 19 -fmessage-length=120 -fno-signed-char -fgnuc-version=4.2.1 -fcxx-exceptions -fexceptions -fcolor-diagnostics -faddrsig -D__GCC_HAVE_DWARF2_CFI_ASM=1 -o "C:\Users\JIMIHE~1\AppData\Local\Temp\test-82a892.o" -x c++ test.cpp 
int arg0 = 0;
int arg1 = 0;
int arg2 = 0;
int arg3 = 0;
int arg4 = 0;

class MyException0{
	float m_a;
	float m_b;
	float m_c;
	float m_d;
	public:
	MyException0(){
		arg0++;
	}
	~MyException0(){
		arg0 = 0;
	}
};

class MyException1{
	int m_a;
	float m_b;
	float m_c;
	float m_d;
	public:
	MyException1(){
		arg1++;
	}
	~MyException1(){
		arg1 = 0;
	}
};

class MyException2{
	float m_a;
	int m_b;
	float m_c;
	float m_d;
	public:
	MyException2(){
		arg2++;
	}
	~MyException2(){
		arg2 = 0;
	}
};

class MyException3{
	int m_a;
	int m_b;
	float m_c;
	float m_d;
	public:
	MyException3(){
		arg3++;
	}
	~MyException3(){
		arg3 = 0;
	}
};

class MyException4{
	float m_a;
	float m_b;
	int m_c;
	float m_d;
	public:
	MyException4(){
		arg4++;
	}
	~MyException4(){
		arg4 = 0;
	}
};


void funcNoE0(){
	arg0 += 9876543210;
	arg1 += 1;
	arg2 += 1;
	arg3 += 1;
	arg4 += 1;
}

void func4(){
	funcNoE0();
	if(arg4 == 1)
	  throw MyException4();
}

void func3(){
	func4();
	if(arg3 == 1)
	  throw MyException3();
}

void func2(){
	func3();
	if(arg2 == 1)
	  throw MyException2();
}

void func1(){
	MyException0 e0;
	MyException1 e1;
	try{
		MyException2 e2;
		func2();
		arg0 += 1;
		arg1 += 1;
		arg2 += 1;
		arg3 += 1;
		arg4 += 1;
	}catch (MyException1* e){
		arg1 += 1;
	}catch (MyException2* e){
		arg2 += 1;
	}
	MyException3 e3;
	MyException4 e4;
}

void func0(){
	arg0 += 1;
	arg1 += 1;
	arg2 += 1;
	arg3 += 1;
	arg4 += 1;
	func1();
}


int main(int arc, char** arg){
	arg0 = *arg[0];
	arg1 = *arg[1];
	arg2 = *arg[2];
	arg3 = *arg[3];
	arg4 = *arg[4];
	
	try{
		arg0 += 1;
	    arg1 += 1;
	    arg2 += 1;
	    arg3 += 1;
	    arg4 += 1;
		if(arg0 == 1){
			funcNoE0();
			throw MyException0();
		}
		func0();
	}catch (MyException0* e){
		return 7;
	}catch (MyException1* e){
		return 8;
	}catch (MyException2* e){
		return 9;
	}catch (MyException3* e){
		return 10;
	}catch (MyException4* e){
		return 11;
	}
	
	return arg0 + arg1 + arg2 + arg3 + arg4;
}