.class Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;
.super Landroid/net/NetworkFactory;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneSwitcherNetworkRequestListener"
.end annotation


# instance fields
.field private final mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/PhoneSwitcher;)V
    .locals 1
    .param p1, "l"    # Landroid/os/Looper;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "nc"    # Landroid/net/NetworkCapabilities;
    .param p4, "ps"    # Lcom/android/internal/telephony/PhoneSwitcher;

    .prologue
    .line 247
    const-string/jumbo v0, "PhoneSwitcherNetworkRequstListener"

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    .line 248
    iput-object p4, p0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    .line 246
    return-void
.end method


# virtual methods
.method protected needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 3
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 255
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 256
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 252
    return-void
.end method

.method protected releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 263
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 264
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 260
    return-void
.end method
