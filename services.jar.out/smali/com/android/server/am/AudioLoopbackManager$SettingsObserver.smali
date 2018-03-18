.class abstract Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AudioLoopbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AudioLoopbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/AudioLoopbackManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AudioLoopbackManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/AudioLoopbackManager;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;->this$0:Lcom/android/server/am/AudioLoopbackManager;

    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 258
    iput-object p2, p0, Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;->name:Ljava/lang/String;

    .line 259
    invoke-direct {p0}, Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;->updateSettings()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;->onInit(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method private updateSettings()Ljava/lang/String;
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;->this$0:Lcom/android/server/am/AudioLoopbackManager;

    iget-object v0, v0, Lcom/android/server/am/AudioLoopbackManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;->name:Ljava/lang/String;

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract notifyOnChange(Ljava/lang/String;)V
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 276
    invoke-direct {p0}, Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;->updateSettings()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;->notifyOnChange(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public abstract onInit(Ljava/lang/String;)V
.end method

.method public registerContentObserver()V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;->this$0:Lcom/android/server/am/AudioLoopbackManager;

    iget-object v0, v0, Lcom/android/server/am/AudioLoopbackManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/am/AudioLoopbackManager$SettingsObserver;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 265
    return-void
.end method
