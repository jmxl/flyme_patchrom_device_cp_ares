.class final Lcom/android/server/utils/ZsBatteryPromptUtils$1;
.super Ljava/lang/Object;
.source "ZsBatteryPromptUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/utils/ZsBatteryPromptUtils;->showTemperWarningDialog(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 36
    sget-object v0, Lcom/android/server/utils/ZsBatteryPromptUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "user click the temperature warning dialog comfirm button"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 35
    return-void
.end method
