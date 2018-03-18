.class public Landroid/webkit/JsDialogHelper;
.super Ljava/lang/Object;
.source "JsDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/JsDialogHelper$CancelListener;,
        Landroid/webkit/JsDialogHelper$PositiveListener;
    }
.end annotation


# static fields
.field public static final ALERT:I = 0x1

.field public static final CONFIRM:I = 0x2

.field public static final PROMPT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "JsDialogHelper"

.field public static final UNLOAD:I = 0x4


# instance fields
.field private final mDefaultValue:Ljava/lang/String;

.field private mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

.field private final mMessage:Ljava/lang/String;

.field private final mResult:Landroid/webkit/JsPromptResult;

.field private final mType:I

.field private final mUrl:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/webkit/JsDialogHelper;)Lcom/zeusis/widget/dialog/ZeusisDialog;
    .locals 1

    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    return-object v0
.end method

.method static synthetic -get1(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;
    .locals 1

    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    return-object v0
.end method

.method static synthetic -set0(Landroid/webkit/JsDialogHelper;Lcom/zeusis/widget/dialog/ZeusisDialog;)Lcom/zeusis/widget/dialog/ZeusisDialog;
    .locals 0

    iput-object p1, p0, Landroid/webkit/JsDialogHelper;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    return-object p1
.end method

.method public constructor <init>(Landroid/webkit/JsPromptResult;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Landroid/webkit/JsPromptResult;
    .param p2, "type"    # I
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    .line 63
    iput-object p3, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    .line 65
    iput p2, p0, Landroid/webkit/JsDialogHelper;->mType:I

    .line 66
    iput-object p5, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/webkit/JsPromptResult;Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/webkit/JsPromptResult;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    .line 71
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "default"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    .line 72
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    .line 73
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/webkit/JsDialogHelper;->mType:I

    .line 74
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private static canShowAlertDialog(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    instance-of v0, p0, Landroid/app/Activity;

    return v0
.end method

.method private getJsDialogTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    .line 216
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    const v3, 0x10402f8

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 229
    :goto_0
    return-object v2

    .line 221
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "alertUrl":Ljava/net/URL;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 223
    const v4, 0x10402f7

    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 225
    .end local v0    # "alertUrl":Ljava/net/URL;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/net/MalformedURLException;
    goto :goto_0
.end method


# virtual methods
.method public invokeCallback(Landroid/webkit/WebChromeClient;Landroid/webkit/WebView;)Z
    .locals 6
    .param p1, "client"    # Landroid/webkit/WebChromeClient;
    .param p2, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 78
    iget v0, p0, Landroid/webkit/JsDialogHelper;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/JsDialogHelper;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :pswitch_0
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0

    .line 82
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0

    .line 84
    :pswitch_2
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0

    .line 86
    :pswitch_3
    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    iget-object v5, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    return v0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public showDialog(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 93
    invoke-static {p1}, Landroid/webkit/JsDialogHelper;->canShowAlertDialog(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 94
    const-string/jumbo v6, "JsDialogHelper"

    const-string/jumbo v7, "Cannot create a dialog, the WebView context is not an Activity"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v6, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {v6}, Landroid/webkit/JsResult;->cancel()V

    .line 96
    return-void

    .line 101
    :cond_0
    iget v6, p0, Landroid/webkit/JsDialogHelper;->mType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 102
    const v6, 0x10402f9

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "title":Ljava/lang/String;
    new-array v6, v9, [Ljava/lang/Object;

    .line 104
    iget-object v7, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x10402fc

    .line 103
    invoke-virtual {p1, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "displayMessage":Ljava/lang/String;
    const v3, 0x10402fa

    .line 106
    .local v3, "positiveTextId":I
    const v2, 0x10402fb

    .line 113
    .local v2, "negativeTextId":I
    :goto_0
    new-instance v6, Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-direct {v6, p1}, Lcom/zeusis/widget/dialog/ZeusisDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/webkit/JsDialogHelper;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    .line 114
    iget-object v6, p0, Landroid/webkit/JsDialogHelper;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-virtual {v6, v4}, Lcom/zeusis/widget/dialog/ZeusisDialog;->title(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 115
    iget-object v6, p0, Landroid/webkit/JsDialogHelper;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    new-instance v7, Landroid/webkit/JsDialogHelper$1;

    invoke-direct {v7, p0}, Landroid/webkit/JsDialogHelper$1;-><init>(Landroid/webkit/JsDialogHelper;)V

    invoke-virtual {v6, v7}, Lcom/zeusis/widget/dialog/BaseDialog;->negativeActionClickListener(Landroid/view/View$OnClickListener;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 123
    iget v6, p0, Landroid/webkit/JsDialogHelper;->mType:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3

    .line 124
    iget-object v6, p0, Landroid/webkit/JsDialogHelper;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-virtual {v6, v0}, Lcom/zeusis/widget/dialog/ZeusisDialog;->message(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/ZeusisDialog;

    .line 125
    iget-object v6, p0, Landroid/webkit/JsDialogHelper;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-virtual {v6, v3}, Lcom/zeusis/widget/dialog/BaseDialog;->positiveAction(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 126
    iget-object v6, p0, Landroid/webkit/JsDialogHelper;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    new-instance v7, Landroid/webkit/JsDialogHelper$2;

    invoke-direct {v7, p0}, Landroid/webkit/JsDialogHelper$2;-><init>(Landroid/webkit/JsDialogHelper;)V

    invoke-virtual {v6, v7}, Lcom/zeusis/widget/dialog/BaseDialog;->positiveActionClickListener(Landroid/view/View$OnClickListener;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 151
    :goto_1
    iget v6, p0, Landroid/webkit/JsDialogHelper;->mType:I

    if-eq v6, v9, :cond_1

    .line 152
    iget-object v6, p0, Landroid/webkit/JsDialogHelper;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-virtual {v6, v2}, Lcom/zeusis/widget/dialog/BaseDialog;->negativeAction(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 153
    iget-object v6, p0, Landroid/webkit/JsDialogHelper;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    new-instance v7, Landroid/webkit/JsDialogHelper$4;

    invoke-direct {v7, p0}, Landroid/webkit/JsDialogHelper$4;-><init>(Landroid/webkit/JsDialogHelper;)V

    invoke-virtual {v6, v7}, Lcom/zeusis/widget/dialog/BaseDialog;->negativeActionClickListener(Landroid/view/View$OnClickListener;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 162
    :cond_1
    iget-object v6, p0, Landroid/webkit/JsDialogHelper;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    new-instance v7, Landroid/webkit/JsDialogHelper$CancelListener;

    invoke-direct {v7, p0, v10}, Landroid/webkit/JsDialogHelper$CancelListener;-><init>(Landroid/webkit/JsDialogHelper;Landroid/webkit/JsDialogHelper$CancelListener;)V

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 163
    iget-object v6, p0, Landroid/webkit/JsDialogHelper;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 92
    return-void

    .line 108
    .end local v0    # "displayMessage":Ljava/lang/String;
    .end local v2    # "negativeTextId":I
    .end local v3    # "positiveTextId":I
    .end local v4    # "title":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Landroid/webkit/JsDialogHelper;->getJsDialogTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 109
    .restart local v4    # "title":Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    .line 110
    .restart local v0    # "displayMessage":Ljava/lang/String;
    const v3, 0x104000a

    .line 111
    .restart local v3    # "positiveTextId":I
    const/high16 v2, 0x1040000

    .restart local v2    # "negativeTextId":I
    goto :goto_0

    .line 135
    :cond_3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 136
    const v7, 0x1090072

    .line 135
    invoke-virtual {v6, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 137
    .local v5, "view":Landroid/view/View;
    const v6, 0x1021089

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 138
    .local v1, "edit":Landroid/widget/EditText;
    iget-object v6, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v6, p0, Landroid/webkit/JsDialogHelper;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-virtual {v6, v3}, Lcom/zeusis/widget/dialog/BaseDialog;->positiveAction(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 140
    iget-object v6, p0, Landroid/webkit/JsDialogHelper;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    new-instance v7, Landroid/webkit/JsDialogHelper$3;

    invoke-direct {v7, p0, v1}, Landroid/webkit/JsDialogHelper$3;-><init>(Landroid/webkit/JsDialogHelper;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7}, Lcom/zeusis/widget/dialog/BaseDialog;->positiveActionClickListener(Landroid/view/View$OnClickListener;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 148
    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v6, p0, Landroid/webkit/JsDialogHelper;->mDialog:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-virtual {v6, v5}, Lcom/zeusis/widget/dialog/ZeusisDialog;->contentView(Landroid/view/View;)Lcom/zeusis/widget/dialog/BaseDialog;

    goto :goto_1
.end method
