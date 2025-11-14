////-cc1 -triple riscv32 -emit-obj -mrelax-all -dumpdir a- -disable-free -clear-ast-before-backend -main-file-name C:\llvm\src\tmptest\luaCpp\lua.cpp -mrelocation-model static -mframe-pointer=all -fmath-errno -ffp-contract=on -fno-rounding-math -mconstructor-aliases -nostdsysteminc -target-cpu generic-rv32 -target-feature +m -target-feature +a -target-feature +c -target-feature -d -target-feature -e -target-feature -f -target-feature -h -target-feature -svinval -target-feature -svnapot -target-feature -svpbmt -target-feature -v -target-feature -xcvbitmanip -target-feature -xcvmac -target-feature -xsfcie -target-feature -xsfvcp -target-feature -xtheadba -target-feature -xtheadbb -target-feature -xtheadbs -target-feature -xtheadcmo -target-feature -xtheadcondmov -target-feature -xtheadfmemidx -target-feature -xtheadmac -target-feature -xtheadmemidx -target-feature -xtheadmempair -target-feature -xtheadsync -target-feature -xtheadvdot -target-feature -xventanacondops -target-feature -zawrs -target-feature -zba -target-feature -zbb -target-feature -zbc -target-feature -zbkb -target-feature -zbkc -target-feature -zbkx -target-feature -zbs -target-feature -zca -target-feature -zcb -target-feature -zcd -target-feature -zce -target-feature -zcf -target-feature -zcmp -target-feature -zcmt -target-feature -zdinx -target-feature -zfh -target-feature -zfhmin -target-feature -zfinx -target-feature -zhinx -target-feature -zhinxmin -target-feature -zicbom -target-feature -zicbop -target-feature -zicboz -target-feature -zicntr -target-feature -zicsr -target-feature -zifencei -target-feature -zihintpause -target-feature -zihpm -target-feature -zk -target-feature -zkn -target-feature -zknd -target-feature -zkne -target-feature -zknh -target-feature -zkr -target-feature -zks -target-feature -zksed -target-feature -zksh -target-feature -zkt -target-feature -zmmul -target-feature -zve32f -target-feature -zve32x -target-feature -zve64d -target-feature -zve64f -target-feature -zve64x -target-feature -zvfh -target-feature -zvl1024b -target-feature -zvl128b -target-feature -zvl16384b -target-feature -zvl2048b -target-feature -zvl256b -target-feature -zvl32768b -target-feature -zvl32b -target-feature -zvl4096b -target-feature -zvl512b -target-feature -zvl64b -target-feature -zvl65536b -target-feature -zvl8192b -target-feature -experimental-smaia -target-feature -experimental-ssaia -target-feature -experimental-zacas -target-feature -experimental-zfa -target-feature -experimental-zfbfmin -target-feature -experimental-zicond -target-feature -experimental-zihintntl -target-feature -experimental-ztso -target-feature -experimental-zvbb -target-feature -experimental-zvbc -target-feature -experimental-zvfbfmin -target-feature -experimental-zvfbfwma -target-feature -experimental-zvkg -target-feature -experimental-zvkn -target-feature -experimental-zvknc -target-feature -experimental-zvkned -target-feature -experimental-zvkng -target-feature -experimental-zvknha -target-feature -experimental-zvknhb -target-feature -experimental-zvks -target-feature -experimental-zvksc -target-feature -experimental-zvksed -target-feature -experimental-zvksg -target-feature -experimental-zvksh -target-feature -experimental-zvkt -target-feature +relax -target-feature -save-restore -target-abi ilp32 -msmall-data-limit 8 -debugger-tuning=gdb "-fcoverage-compilation-dir=C:\llvm-project-17.0.5.src\build\Debug\bin" -resource-dir "C:\llvm-project-17.0.5.src\build\Debug\lib\clang\17" -internal-isystem "C:\llvm-project-17.0.5.src\build\Debug\bin\..\lib\clang-runtimes\riscv32\include\c++\v1" -internal-isystem "C:\llvm-project-17.0.5.src\build\Debug\lib\clang\17\include" -internal-isystem "C:\llvm-project-17.0.5.src\build\Debug\bin\..\lib\clang-runtimes\riscv32\include" -fdeprecated-macro "-fdebug-compilation-dir=C:\llvm-project-17.0.5.src\build\Debug\bin" -ferror-limit 19 -fmessage-length=120 -fno-signed-char -fgnuc-version=4.2.1 -fcxx-exceptions -fexceptions -fcolor-diagnostics -faddrsig -D__GCC_HAVE_DWARF2_CFI_ASM=1 -o "C:\Users\JIMIHE~1\AppData\Local\Temp\test-82a892.o" -x c++ C:\llvm\src\tmptest\luaCpp\lua.cpp 
class Object;

class ObjectPtr {
private:
  Object *ptr;
  unsigned int *ref_count;

  void release();

public:
  ObjectPtr();

  ObjectPtr(Object *p);

  ObjectPtr(const ObjectPtr &other);

  ~ObjectPtr();

  ObjectPtr &operator=(const ObjectPtr &other);

  Object *operator->() const;

  Object &operator*() const;

  explicit operator bool() const;
};

class ObjectPtrArray {
private:
  ObjectPtr *data;
  unsigned capacity;
  unsigned size;

  void resize(unsigned new_capacity);

public:
  ObjectPtrArray();

  ~ObjectPtrArray();

  void push_back(const ObjectPtr &value);

  void push_back(const ObjectPtrArray &values);

  void pop_back();

  ObjectPtr &operator[](unsigned index) const;

  unsigned get_size() const;
  unsigned get_capacity();
};

extern ObjectPtr _ENV;
extern ObjectPtr _G;
typedef ObjectPtrArray (*MethodTy)(const ObjectPtr& Base, const ObjectPtrArray &Parms);
ObjectPtr GetMember(const ObjectPtr& Base, const ObjectPtr& Name, unsigned long long OpLoc);
ObjectPtr GetMemberFromName(const ObjectPtr& Base, char* Name, unsigned NameLen, unsigned long long OpLoc);
void SetMember(const ObjectPtr &Base, const ObjectPtr &Field, const ObjectPtr &Value, unsigned long long OpLoc);
ObjectPtr BuildNil();
ObjectPtr BuildBool(bool bVal);
ObjectPtr BuildNumber(double dVal);
ObjectPtr BuildString(char* data, unsigned length);
ObjectPtr BuildTable(const ObjectPtrArray &Values);
ObjectPtr BuildFunction()
ObjectPtr GetObjectPtrFromArray(const ObjectPtrArray &Values, unsigned Index);
void      PushObjPtrIntoArray(ObjectPtrArray &Arr1, const ObjectPtr &Value);
void      PushArrayIntoArray(ObjectPtrArray &Arr1, const ObjectPtrArray &Arr2);
void      SetAsLocal(ObjectPtr& LocalVar);
void      SetFunctionUpValues(ObjectPtr &Fun, const ObjectPtrArray &Arr);
void      SetFunctionMethod(ObjectPtr &Fun, const MethodTy &Ptr);
ObjectPtr GetUpValue(const ObjectPtr &Fun, const ObjectPtr &Var, unsigned long long OpLoc);
void      BuildModifyExpr(const ObjectPtr& LHS, const ObjectPtr& RHS);

int main(){
	int a = 0;
	auto f = [&]()->int{
		return a;
	};
	return f();
}