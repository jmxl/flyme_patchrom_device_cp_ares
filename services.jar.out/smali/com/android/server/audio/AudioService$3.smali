.class Lcom/android/server/audio/AudioService$3;
.super Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 6042
    iput-object p1, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSetOutputDone(Z)V
    .locals 2
    .param p1, "result"    # Z

    .prologue
    .line 6045
    if-eqz p1, :cond_0

    .line 6046
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "SetOutput Success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6044
    :cond_0
    return-void
.end method
