.class public Lcom/android/server/utils/ZsBatteryPromptUtils;
.super Ljava/lang/Object;
.source "ZsBatteryPromptUtils.java"


# static fields
.field public static HIGH_TEMPER:I

.field public static LOW_TEMPER:I

.field public static TAG:Ljava/lang/String;

.field public static isTemperWarningStarted:Z

.field static mTemperWarningDialog:Lcom/zeusis/widget/dialog/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    const/4 v0, 0x1

    sput v0, Lcom/android/server/utils/ZsBatteryPromptUtils;->HIGH_TEMPER:I

    .line 16
    sput v1, Lcom/android/server/utils/ZsBatteryPromptUtils;->LOW_TEMPER:I

    .line 17
    const-string/jumbo v0, "ZsBatteryPromptUtils"

    sput-object v0, Lcom/android/server/utils/ZsBatteryPromptUtils;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/utils/ZsBatteryPromptUtils;->mTemperWarningDialog:Lcom/zeusis/widget/dialog/AlertDialog;

    .line 19
    sput-boolean v1, Lcom/android/server/utils/ZsBatteryPromptUtils;->isTemperWarningStarted:Z

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissTempWarningDialog()V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/utils/ZsBatteryPromptUtils;->isTemperWarningStarted:Z

    .line 57
    sget-object v0, Lcom/android/server/utils/ZsBatteryPromptUtils;->mTemperWarningDialog:Lcom/zeusis/widget/dialog/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/utils/ZsBatteryPromptUtils;->mTemperWarningDialog:Lcom/zeusis/widget/dialog/AlertDialog;

    invoke-virtual {v0}, Lcom/zeusis/widget/dialog/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/android/server/utils/ZsBatteryPromptUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dismissTempWarningDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v0, Lcom/android/server/utils/ZsBatteryPromptUtils;->mTemperWarningDialog:Lcom/zeusis/widget/dialog/AlertDialog;

    invoke-virtual {v0}, Lcom/zeusis/widget/dialog/AlertDialog;->dismiss()V

    .line 55
    :cond_0
    return-void
.end method

.method public static showTemperWarningDialog(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tempMode"    # I

    .prologue
    const/4 v4, 0x0

    .line 22
    sget-object v1, Lcom/android/server/utils/ZsBatteryPromptUtils;->mTemperWarningDialog:Lcom/zeusis/widget/dialog/AlertDialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/utils/ZsBatteryPromptUtils;->mTemperWarningDialog:Lcom/zeusis/widget/dialog/AlertDialog;

    invoke-virtual {v1}, Lcom/zeusis/widget/dialog/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    sget-object v1, Lcom/android/server/utils/ZsBatteryPromptUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "temperature warning dialog is Showing up"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void

    .line 26
    :cond_0
    sget-object v1, Lcom/android/server/utils/ZsBatteryPromptUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "battery temperature warning,show mTempWarningDialog tempMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/zeusis/widget/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 28
    .local v0, "builder":Lcom/zeusis/widget/dialog/AlertDialog$Builder;
    sget v1, Lcom/android/server/utils/ZsBatteryPromptUtils;->HIGH_TEMPER:I

    if-ne p1, v1, :cond_2

    .line 29
    const v1, 0x104062f

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->setMessage(I)Lcom/zeusis/widget/dialog/AlertDialog$Builder;

    .line 33
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/server/utils/ZsBatteryPromptUtils$1;

    invoke-direct {v1}, Lcom/android/server/utils/ZsBatteryPromptUtils$1;-><init>()V

    const v2, 0x1040630

    invoke-virtual {v0, v2, v1}, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zeusis/widget/dialog/AlertDialog$Builder;

    .line 40
    invoke-virtual {v0}, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->create()Lcom/zeusis/widget/dialog/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/android/server/utils/ZsBatteryPromptUtils;->mTemperWarningDialog:Lcom/zeusis/widget/dialog/AlertDialog;

    .line 41
    sget-object v1, Lcom/android/server/utils/ZsBatteryPromptUtils;->mTemperWarningDialog:Lcom/zeusis/widget/dialog/AlertDialog;

    invoke-virtual {v1}, Lcom/zeusis/widget/dialog/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 42
    sget-object v1, Lcom/android/server/utils/ZsBatteryPromptUtils;->mTemperWarningDialog:Lcom/zeusis/widget/dialog/AlertDialog;

    invoke-virtual {v1}, Lcom/zeusis/widget/dialog/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 43
    sget-object v1, Lcom/android/server/utils/ZsBatteryPromptUtils;->mTemperWarningDialog:Lcom/zeusis/widget/dialog/AlertDialog;

    invoke-virtual {v1, v4}, Lcom/zeusis/widget/dialog/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 44
    sget-object v1, Lcom/android/server/utils/ZsBatteryPromptUtils;->mTemperWarningDialog:Lcom/zeusis/widget/dialog/AlertDialog;

    invoke-virtual {v1, v4}, Lcom/zeusis/widget/dialog/AlertDialog;->setCancelable(Z)V

    .line 45
    sget-object v1, Lcom/android/server/utils/ZsBatteryPromptUtils;->mTemperWarningDialog:Lcom/zeusis/widget/dialog/AlertDialog;

    new-instance v2, Lcom/android/server/utils/ZsBatteryPromptUtils$2;

    invoke-direct {v2}, Lcom/android/server/utils/ZsBatteryPromptUtils$2;-><init>()V

    invoke-virtual {v1, v2}, Lcom/zeusis/widget/dialog/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 52
    sget-object v1, Lcom/android/server/utils/ZsBatteryPromptUtils;->mTemperWarningDialog:Lcom/zeusis/widget/dialog/AlertDialog;

    invoke-virtual {v1}, Lcom/zeusis/widget/dialog/AlertDialog;->show()V

    .line 21
    return-void

    .line 30
    :cond_2
    sget v1, Lcom/android/server/utils/ZsBatteryPromptUtils;->LOW_TEMPER:I

    if-ne p1, v1, :cond_1

    .line 31
    const v1, 0x1040631

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->setMessage(I)Lcom/zeusis/widget/dialog/AlertDialog$Builder;

    goto :goto_0
.end method
