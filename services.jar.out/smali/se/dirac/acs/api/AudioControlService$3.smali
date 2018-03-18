.class Lse/dirac/acs/api/AudioControlService$3;
.super Ljava/lang/Object;
.source "AudioControlService.java"

# interfaces
.implements Lse/dirac/acs/api/AsyncHelper$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/acs/api/AudioControlService;
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
        "Lse/dirac/acs/api/OutputSettings;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lse/dirac/acs/api/AudioControlService;


# direct methods
.method constructor <init>(Lse/dirac/acs/api/AudioControlService;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService$3;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lse/dirac/acs/api/OutputSettings;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 574
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$3;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-virtual {v0, p1}, Lse/dirac/acs/api/AudioControlService;->setOutput(Lse/dirac/acs/api/OutputSettings;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 576
    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService$3;->this$0:Lse/dirac/acs/api/AudioControlService;

    invoke-static {v1, v0}, Lse/dirac/acs/api/AudioControlService;->access$500(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V

    const/4 v0, 0x0

    .line 577
    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 570
    check-cast p1, Lse/dirac/acs/api/OutputSettings;

    invoke-virtual {p0, p1}, Lse/dirac/acs/api/AudioControlService$3;->apply(Lse/dirac/acs/api/OutputSettings;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
