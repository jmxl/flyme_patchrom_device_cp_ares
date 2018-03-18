.class public Landroid/os/freeze/YLAppFreezeListener;
.super Landroid/os/freeze/IYLAppFreezeListener$Stub;
.source "YLAppFreezeListener.java"


# static fields
.field private static final TYPE_SET_FREEZE:I = 0x1

.field private static final TYPE_SET_UNFREEZE:I = 0x2


# instance fields
.field private mFreezeList:Landroid/os/freeze/YLAppFreezeList;

.field private final mListenerHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -wrap0(Landroid/os/freeze/YLAppFreezeListener;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Landroid/os/freeze/YLAppFreezeListener;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/freeze/YLAppFreezeList;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "freezeList"    # Landroid/os/freeze/YLAppFreezeList;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/os/freeze/IYLAppFreezeListener$Stub;-><init>()V

    .line 20
    iput-object v0, p0, Landroid/os/freeze/YLAppFreezeListener;->mFreezeList:Landroid/os/freeze/YLAppFreezeList;

    .line 26
    iput-object p2, p0, Landroid/os/freeze/YLAppFreezeListener;->mFreezeList:Landroid/os/freeze/YLAppFreezeList;

    .line 28
    if-nez p1, :cond_0

    .line 29
    new-instance v0, Landroid/os/freeze/YLAppFreezeListener$1;

    invoke-direct {v0, p0}, Landroid/os/freeze/YLAppFreezeListener$1;-><init>(Landroid/os/freeze/YLAppFreezeListener;)V

    iput-object v0, p0, Landroid/os/freeze/YLAppFreezeListener;->mListenerHandler:Landroid/os/Handler;

    .line 25
    :goto_0
    return-void

    .line 36
    :cond_0
    new-instance v0, Landroid/os/freeze/YLAppFreezeListener$2;

    invoke-direct {v0, p0, p1}, Landroid/os/freeze/YLAppFreezeListener$2;-><init>(Landroid/os/freeze/YLAppFreezeListener;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/os/freeze/YLAppFreezeListener;->mListenerHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 69
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 72
    .local v0, "freezeUid":I
    invoke-direct {p0, v0}, Landroid/os/freeze/YLAppFreezeListener;->setFreeze(I)V

    goto :goto_0

    .line 75
    .end local v0    # "freezeUid":I
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 76
    .local v1, "unFreezeUid":I
    invoke-direct {p0, v1}, Landroid/os/freeze/YLAppFreezeListener;->setUnfreeze(I)V

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setFreeze(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 83
    iget-object v0, p0, Landroid/os/freeze/YLAppFreezeListener;->mFreezeList:Landroid/os/freeze/YLAppFreezeList;

    invoke-virtual {v0, p1}, Landroid/os/freeze/YLAppFreezeList;->addUid(I)V

    .line 82
    return-void
.end method

.method private setUnfreeze(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 87
    iget-object v0, p0, Landroid/os/freeze/YLAppFreezeListener;->mFreezeList:Landroid/os/freeze/YLAppFreezeList;

    invoke-virtual {v0, p1}, Landroid/os/freeze/YLAppFreezeList;->remove(I)V

    .line 86
    return-void
.end method


# virtual methods
.method public onFreezeSet(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 50
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 51
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 52
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 53
    iget-object v1, p0, Landroid/os/freeze/YLAppFreezeListener;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 49
    return-void
.end method

.method public onUnfreezeSet(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 61
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 62
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 63
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 64
    iget-object v1, p0, Landroid/os/freeze/YLAppFreezeListener;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 60
    return-void
.end method
