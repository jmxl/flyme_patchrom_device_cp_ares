.class Lcom/android/server/am/AudioLoopbackManager$2;
.super Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;
.source "AudioLoopbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AudioLoopbackManager;->initAudioLoopbackOnOffObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AudioLoopbackManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/AudioLoopbackManager;Lcom/android/server/am/AudioLoopbackManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/AudioLoopbackManager;
    .param p2, "this$0_1"    # Lcom/android/server/am/AudioLoopbackManager;
    .param p3, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p2, p0, Lcom/android/server/am/AudioLoopbackManager$2;->this$0:Lcom/android/server/am/AudioLoopbackManager;

    invoke-direct {p0, p1, p3}, Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;-><init>(Lcom/android/server/am/AudioLoopbackManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public notifyOnChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 197
    const-string/jumbo v0, "AudioLoopbackManager"

    const-string/jumbo v1, "SystemDatabase change"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/android/server/am/AudioLoopbackManager$2;->this$0:Lcom/android/server/am/AudioLoopbackManager;

    invoke-static {v0, p1}, Lcom/android/server/am/AudioLoopbackManager;->-wrap0(Lcom/android/server/am/AudioLoopbackManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string/jumbo v0, "AudioLoopbackManager"

    const-string/jumbo v1, "SystemDatabase change and OpenAudioLoopbackDialog()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/AudioLoopbackManager$2;->this$0:Lcom/android/server/am/AudioLoopbackManager;

    invoke-virtual {v0}, Lcom/android/server/am/AudioLoopbackManager;->dataBaseChange()V

    .line 195
    return-void

    .line 202
    :cond_0
    const-string/jumbo v0, "AudioLoopbackManager"

    const-string/jumbo v1, "SystemDatabase change and stopFloatWindowService()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onInit(Ljava/lang/String;)V
    .locals 1
    .param p1, "currentValue"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/am/AudioLoopbackManager$2;->this$0:Lcom/android/server/am/AudioLoopbackManager;

    invoke-static {v0, p1}, Lcom/android/server/am/AudioLoopbackManager;->-wrap0(Lcom/android/server/am/AudioLoopbackManager;Ljava/lang/String;)Z

    .line 189
    return-void
.end method
