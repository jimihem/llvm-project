#include "LuaVMMCTargetDesc.h"
#include "LuaVMAsmBackend.h"
#include "LuaVMELFStreamer.h"
#include "LuaVMMCCodeEmiter.h"
#include "InstPrinter/LuaVMInstPrinter.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/MC/MCAsmBackend.h"
#include "llvm/MC/MCCodeEmitter.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCObjectWriter.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/MC/MCAsmInfo.h"
#include "TargetInfo/LuaVMTargetInfo.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/MC/TargetRegistry.h"

using namespace llvm;

#define GET_SUBTARGETINFO_ENUM
#define GET_SUBTARGETINFO_MC_DESC
#include "LuaVMGenSubtargetInfo.inc"

#define GET_REGINFO_MC_DESC
#define GET_REGINFO_ENUM
#include "LuaVMGenRegisterInfo.inc"

MCRegisterInfo *createLuaVMMCRegInfo(const Triple &TT) {
  MCRegisterInfo *MRI = new MCRegisterInfo();
  InitLuaVMMCRegisterInfo(MRI, 0);
  return MRI;
}


MCAsmBackend *createLuaVMAsmBackend(const Target &T, const MCSubtargetInfo &STI,
                                    const MCRegisterInfo &MRI,
                                    const MCTargetOptions &Options) {
  return new LuaVMAsmBackend(STI);
}

MCAsmInfo* createMCAsmInfo(const MCRegisterInfo& MRI, const Triple& TT,
    const MCTargetOptions& Options) {
  MCAsmInfo *MAI = new MCAsmInfo();
  MAI->setExceptionsType(ExceptionHandling::DwarfCFI);
  return MAI;
}

#define GET_INSTRINFO_MC_DESC
#define GET_INSTRINFO_ENUM
#include "LuaVMGenInstrInfo.inc"

MCInstrInfo *createLuaVMMCInstrInfo() { 
  MCInstrInfo *MII = new MCInstrInfo();
  InitLuaVMMCInstrInfo(MII);
  return MII;
}

MCSubtargetInfo* createLuaVMMCSubtargetInfo(const Triple& TT, StringRef CPU,
    StringRef Features) {
  return createLuaVMMCSubtargetInfoImpl(TT, CPU, CPU, Features);
}

MCCodeEmitter *createLuaVMMCCodeEmitter(const MCInstrInfo &II, MCContext &Ctx) {
  LuaVMMCCodeEmitter *MII = new LuaVMMCCodeEmitter(Ctx);
  return MII;
}

MCInstPrinter* createLuaVMInstPrinter(const Triple& T, unsigned SyntaxVariant,
    const MCAsmInfo& MAI, const MCInstrInfo& MII,
    const MCRegisterInfo& MRI) {
  return new LuaVMInstPrinter(MAI, MII, MRI);
}

extern "C" void LLVMInitializeLuaVMTargetMC() {
  TargetRegistry::RegisterMCAsmInfo(getTheLuaVMTarget(), createMCAsmInfo);
  TargetRegistry::RegisterMCAsmBackend(getTheLuaVMTarget(),
                                       createLuaVMAsmBackend);
  TargetRegistry::RegisterMCCodeEmitter(getTheLuaVMTarget(),
                                        createLuaVMMCCodeEmitter);
  TargetRegistry::RegisterMCInstrInfo(getTheLuaVMTarget(),
                                      createLuaVMMCInstrInfo);
  TargetRegistry::RegisterMCRegInfo(getTheLuaVMTarget(), createLuaVMMCRegInfo);
  TargetRegistry::RegisterMCSubtargetInfo(getTheLuaVMTarget(),
                                          createLuaVMMCSubtargetInfo);
  TargetRegistry::RegisterMCInstPrinter(getTheLuaVMTarget(),
                                        createLuaVMInstPrinter);
}