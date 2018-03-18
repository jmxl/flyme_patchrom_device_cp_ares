.class public interface abstract Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;
.super Ljava/lang/Object;
.source "AudioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/acs/api/AudioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceListChangedFunctor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;
    }
.end annotation


# virtual methods
.method public abstract onChange(Lse/dirac/acs/api/Device;Ljava/util/List;Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lse/dirac/acs/api/Device;",
            "Ljava/util/List",
            "<",
            "Lse/dirac/acs/api/Filter;",
            ">;",
            "Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;",
            ")V"
        }
    .end annotation
.end method
