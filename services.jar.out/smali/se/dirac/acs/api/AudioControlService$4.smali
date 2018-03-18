.class Lse/dirac/acs/api/AudioControlService$4;
.super Ljava/lang/Object;
.source "AudioControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/dirac/acs/api/AudioControlService;->ensureMainThreadThrow(Ljava/lang/RuntimeException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/dirac/acs/api/AudioControlService;

.field final synthetic val$e:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService$4;->this$0:Lse/dirac/acs/api/AudioControlService;

    iput-object p2, p0, Lse/dirac/acs/api/AudioControlService$4;->val$e:Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService$4;->val$e:Ljava/lang/RuntimeException;

    throw v0
.end method
