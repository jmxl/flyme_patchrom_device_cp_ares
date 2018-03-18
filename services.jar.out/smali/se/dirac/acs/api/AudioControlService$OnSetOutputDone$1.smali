.class Lse/dirac/acs/api/AudioControlService$OnSetOutputDone$1;
.super Ljava/lang/Object;
.source "AudioControlService.java"

# interfaces
.implements Lse/dirac/acs/api/AsyncHelper$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lse/dirac/acs/api/AsyncHelper$Function",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;


# direct methods
.method constructor <init>(Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService$OnSetOutputDone$1;->this$0:Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lse/dirac/acs/api/AudioControlService$OnSetOutputDone$1;->apply(Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    if-nez p1, :cond_0

    const-string/jumbo v0, "se.dirac.acs-api"

    const-string/jumbo v1, "expecting exception in main thread"

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    return-object v2

    .line 59
    :cond_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$OnSetOutputDone$1;->this$0:Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;->OnSetOutputDone(Z)V

    goto :goto_0
.end method
