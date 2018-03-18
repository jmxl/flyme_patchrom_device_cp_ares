.class public abstract Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;
.super Ljava/lang/Object;
.source "AudioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/acs/api/AudioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnSetOutputDone"
.end annotation


# instance fields
.field private final func:Lse/dirac/acs/api/AsyncHelper$Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lse/dirac/acs/api/AsyncHelper$Function",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lse/dirac/acs/api/AudioControlService$OnSetOutputDone$1;

    invoke-direct {v0, p0}, Lse/dirac/acs/api/AudioControlService$OnSetOutputDone$1;-><init>(Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;)V

    iput-object v0, p0, Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;->func:Lse/dirac/acs/api/AsyncHelper$Function;

    return-void
.end method

.method static synthetic access$300(Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;)Lse/dirac/acs/api/AsyncHelper$Function;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;->func:Lse/dirac/acs/api/AsyncHelper$Function;

    return-object v0
.end method


# virtual methods
.method public abstract OnSetOutputDone(Z)V
.end method
