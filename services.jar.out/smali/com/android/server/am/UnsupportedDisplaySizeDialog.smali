.class public Lcom/android/server/am/UnsupportedDisplaySizeDialog;
.super Ljava/lang/Object;
.source "UnsupportedDisplaySizeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UnsupportedDisplaySizeDialog$-void__init__com_android_server_am_ActivityManagerService_service_android_content_Context_context_android_content_pm_ApplicationInfo_appInfo_LambdaImpl0;
    }
.end annotation


# instance fields
.field private final mDialog:Lcom/zeusis/widget/dialog/AskAgainDialog;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 10
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/16 v7, 0x18

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iget-object v5, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

    .line 41
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 42
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p3, v3}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 43
    .local v1, "label":Ljava/lang/CharSequence;
    new-array v5, v9, [Ljava/lang/Object;

    .line 44
    aput-object v1, v5, v8

    const v6, 0x10403b8

    .line 43
    invoke-virtual {p2, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "message":Ljava/lang/CharSequence;
    new-instance v5, Lcom/zeusis/widget/dialog/AskAgainDialog;

    invoke-direct {v5, p2}, Lcom/zeusis/widget/dialog/AskAgainDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Lcom/zeusis/widget/dialog/AskAgainDialog;

    .line 52
    iget-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Lcom/zeusis/widget/dialog/AskAgainDialog;

    invoke-direct {p0, p2, v7}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {p0, p2, v7}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v8}, Lcom/zeusis/widget/dialog/AskAgainDialog;->contentMargin(IIII)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 53
    iget-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Lcom/zeusis/widget/dialog/AskAgainDialog;

    invoke-virtual {v5, v8}, Lcom/zeusis/widget/dialog/AskAgainDialog;->setActionMarginTop(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 54
    iget-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Lcom/zeusis/widget/dialog/AskAgainDialog;

    invoke-virtual {v5, v2}, Lcom/zeusis/widget/dialog/AskAgainDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/AskAgainDialog;

    .line 55
    iget-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Lcom/zeusis/widget/dialog/AskAgainDialog;

    const v6, 0x104000a

    invoke-virtual {v5, v6}, Lcom/zeusis/widget/dialog/AskAgainDialog;->positiveAction(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 58
    iget-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Lcom/zeusis/widget/dialog/AskAgainDialog;

    invoke-virtual {v5}, Lcom/zeusis/widget/dialog/AskAgainDialog;->create()V

    .line 60
    iget-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Lcom/zeusis/widget/dialog/AskAgainDialog;

    invoke-virtual {v5}, Lcom/zeusis/widget/dialog/AskAgainDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 61
    .local v4, "window":Landroid/view/Window;
    const/16 v5, 0x7d2

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 64
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const-string/jumbo v6, "UnsupportedDisplaySizeDialog"

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Lcom/zeusis/widget/dialog/AskAgainDialog;

    invoke-virtual {v5}, Lcom/zeusis/widget/dialog/AskAgainDialog;->getCheckbox()Lcom/zeusis/widget/checkbox/ZeusisCheckbox;

    move-result-object v0

    .line 67
    .local v0, "alwaysShow":Landroid/widget/CheckBox;
    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 68
    new-instance v5, Lcom/android/server/am/UnsupportedDisplaySizeDialog$-void__init__com_android_server_am_ActivityManagerService_service_android_content_Context_context_android_content_pm_ApplicationInfo_appInfo_LambdaImpl0;

    invoke-direct {v5, p0, p1}, Lcom/android/server/am/UnsupportedDisplaySizeDialog$-void__init__com_android_server_am_ActivityManagerService_service_android_content_Context_context_android_content_pm_ApplicationInfo_appInfo_LambdaImpl0;-><init>(Lcom/android/server/am/UnsupportedDisplaySizeDialog;Lcom/android/server/am/ActivityManagerService;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 38
    return-void
.end method

.method private dpToPx(Landroid/content/Context;I)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dp"    # I

    .prologue
    .line 89
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method synthetic -com_android_server_am_UnsupportedDisplaySizeDialog_lambda$1(Lcom/android/server/am/ActivityManagerService;Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .prologue
    .line 69
    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 70
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    .line 71
    iget-object v1, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v1, p3}, Lcom/android/server/am/CompatModePackages;->setPackageNotifyUnsupportedZoomLocked(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 69
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 0
    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Lcom/zeusis/widget/dialog/AskAgainDialog;

    invoke-virtual {v0}, Lcom/zeusis/widget/dialog/AskAgainDialog;->dismiss()V

    .line 84
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Lcom/zeusis/widget/dialog/AskAgainDialog;

    invoke-virtual {v0}, Lcom/zeusis/widget/dialog/AskAgainDialog;->show()V

    .line 80
    return-void
.end method
