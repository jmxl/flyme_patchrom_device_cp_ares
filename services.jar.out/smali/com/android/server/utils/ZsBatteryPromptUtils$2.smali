.class final Lcom/android/server/utils/ZsBatteryPromptUtils$2;
.super Ljava/lang/Object;
.source "ZsBatteryPromptUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/utils/ZsBatteryPromptUtils;->isTemperWarningStarted:Z

    .line 49
    sget-object v0, Lcom/android/server/utils/ZsBatteryPromptUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Temperature Warning Dialog onDismiss!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method
