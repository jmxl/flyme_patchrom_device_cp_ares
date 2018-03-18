.class Lcom/android/server/am/AudioLoopbackManager$1;
.super Ljava/util/ArrayList;
.source "AudioLoopbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AudioLoopbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AudioLoopbackManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/AudioLoopbackManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/AudioLoopbackManager;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/server/am/AudioLoopbackManager$1;->this$0:Lcom/android/server/am/AudioLoopbackManager;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    const-string/jumbo v0, "com.changba"

    invoke-virtual {p0, v0}, Lcom/android/server/am/AudioLoopbackManager$1;->add(Ljava/lang/Object;)Z

    .line 54
    const-string/jumbo v0, "com.tencent.karaoke"

    invoke-virtual {p0, v0}, Lcom/android/server/am/AudioLoopbackManager$1;->add(Ljava/lang/Object;)Z

    .line 55
    const-string/jumbo v0, "com.audiocn.kalaok"

    invoke-virtual {p0, v0}, Lcom/android/server/am/AudioLoopbackManager$1;->add(Ljava/lang/Object;)Z

    .line 56
    const-string/jumbo v0, "com.app.hero.ui"

    invoke-virtual {p0, v0}, Lcom/android/server/am/AudioLoopbackManager$1;->add(Ljava/lang/Object;)Z

    .line 57
    const-string/jumbo v0, "com.iflytek.ttk.chang"

    invoke-virtual {p0, v0}, Lcom/android/server/am/AudioLoopbackManager$1;->add(Ljava/lang/Object;)Z

    .line 58
    const-string/jumbo v0, "com.huuhoo.mystyle"

    invoke-virtual {p0, v0}, Lcom/android/server/am/AudioLoopbackManager$1;->add(Ljava/lang/Object;)Z

    .line 59
    const-string/jumbo v0, "cn.banshenggua.aichang"

    invoke-virtual {p0, v0}, Lcom/android/server/am/AudioLoopbackManager$1;->add(Ljava/lang/Object;)Z

    .line 60
    const-string/jumbo v0, "cn.kuwo.sing"

    invoke-virtual {p0, v0}, Lcom/android/server/am/AudioLoopbackManager$1;->add(Ljava/lang/Object;)Z

    .line 61
    const-string/jumbo v0, "com.tlkgzw.vbm"

    invoke-virtual {p0, v0}, Lcom/android/server/am/AudioLoopbackManager$1;->add(Ljava/lang/Object;)Z

    .line 62
    const-string/jumbo v0, "com.kugou.android"

    invoke-virtual {p0, v0}, Lcom/android/server/am/AudioLoopbackManager$1;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method
