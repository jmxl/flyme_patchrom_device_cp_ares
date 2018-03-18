.class Lcom/android/server/am/AudioLoopbackManager$3;
.super Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;
.source "AudioLoopbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AudioLoopbackManager;->initAudioLoopbackAppListObserver()V
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
    .line 225
    iput-object p2, p0, Lcom/android/server/am/AudioLoopbackManager$3;->this$0:Lcom/android/server/am/AudioLoopbackManager;

    invoke-direct {p0, p1, p3}, Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;-><init>(Lcom/android/server/am/AudioLoopbackManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public notifyOnChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 242
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AudioLoopbackManager$3;->this$0:Lcom/android/server/am/AudioLoopbackManager;

    invoke-static {v0}, Lcom/android/server/am/AudioLoopbackManager;->-get0(Lcom/android/server/am/AudioLoopbackManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/server/am/AudioLoopbackManager$3;->this$0:Lcom/android/server/am/AudioLoopbackManager;

    invoke-static {v0}, Lcom/android/server/am/AudioLoopbackManager;->-get0(Lcom/android/server/am/AudioLoopbackManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 247
    iget-object v0, p0, Lcom/android/server/am/AudioLoopbackManager$3;->this$0:Lcom/android/server/am/AudioLoopbackManager;

    invoke-static {v0}, Lcom/android/server/am/AudioLoopbackManager;->-get0(Lcom/android/server/am/AudioLoopbackManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AudioLoopbackManager$3;->this$0:Lcom/android/server/am/AudioLoopbackManager;

    invoke-static {v1, p1}, Lcom/android/server/am/AudioLoopbackManager;->-wrap1(Lcom/android/server/am/AudioLoopbackManager;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 240
    :cond_2
    return-void
.end method

.method public onInit(Ljava/lang/String;)V
    .locals 2
    .param p1, "currentValue"    # Ljava/lang/String;

    .prologue
    .line 229
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    :cond_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AudioLoopbackManager$3;->this$0:Lcom/android/server/am/AudioLoopbackManager;

    invoke-static {v0}, Lcom/android/server/am/AudioLoopbackManager;->-get0(Lcom/android/server/am/AudioLoopbackManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/android/server/am/AudioLoopbackManager$3;->this$0:Lcom/android/server/am/AudioLoopbackManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/am/AudioLoopbackManager;->-set0(Lcom/android/server/am/AudioLoopbackManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/AudioLoopbackManager$3;->this$0:Lcom/android/server/am/AudioLoopbackManager;

    invoke-static {v0}, Lcom/android/server/am/AudioLoopbackManager;->-get0(Lcom/android/server/am/AudioLoopbackManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 236
    iget-object v0, p0, Lcom/android/server/am/AudioLoopbackManager$3;->this$0:Lcom/android/server/am/AudioLoopbackManager;

    invoke-static {v0}, Lcom/android/server/am/AudioLoopbackManager;->-get0(Lcom/android/server/am/AudioLoopbackManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AudioLoopbackManager$3;->this$0:Lcom/android/server/am/AudioLoopbackManager;

    invoke-static {v1, p1}, Lcom/android/server/am/AudioLoopbackManager;->-wrap1(Lcom/android/server/am/AudioLoopbackManager;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 227
    return-void
.end method
