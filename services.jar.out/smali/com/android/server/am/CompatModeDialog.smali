.class public final Lcom/android/server/am/CompatModeDialog;
.super Lcom/zeusis/widget/dialog/BaseDialog;
.source "CompatModeDialog.java"


# instance fields
.field final mAlwaysShow:Lcom/zeusis/widget/checkbox/ZeusisCheckbox;

.field final mAppInfo:Landroid/content/pm/ApplicationInfo;

.field final mCompatEnabled:Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;

.field final mHint:Landroid/view/View;

.field final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const v5, 0x1090032

    const/high16 v4, 0x20000

    const/4 v2, 0x1

    .line 49
    invoke-direct {p0, p2}, Lcom/zeusis/widget/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0, v2}, Lcom/android/server/am/CompatModeDialog;->setCancelable(Z)V

    .line 52
    invoke-virtual {p0, v2}, Lcom/android/server/am/CompatModeDialog;->setCanceledOnTouchOutside(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/android/server/am/CompatModeDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/server/am/CompatModeDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 59
    invoke-virtual {p0}, Lcom/android/server/am/CompatModeDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 60
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v2, "Error Dialog"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/server/am/CompatModeDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 63
    iput-object p1, p0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 64
    iput-object p3, p0, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 66
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 67
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0, v5}, Lcom/android/server/am/CompatModeDialog;->contentView(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 68
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/am/CompatModeDialog;->title(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 69
    invoke-virtual {p0}, Lcom/android/server/am/CompatModeDialog;->noActionButton()Lcom/zeusis/widget/dialog/BaseDialog;

    .line 70
    const v2, 0x1021032

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;

    iput-object v2, p0, Lcom/android/server/am/CompatModeDialog;->mCompatEnabled:Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;

    .line 71
    iget-object v2, p0, Lcom/android/server/am/CompatModeDialog;->mCompatEnabled:Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;

    new-instance v3, Lcom/android/server/am/CompatModeDialog$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/CompatModeDialog$1;-><init>(Lcom/android/server/am/CompatModeDialog;)V

    invoke-virtual {v2, v3}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    const v2, 0x1021033

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;

    iput-object v2, p0, Lcom/android/server/am/CompatModeDialog;->mAlwaysShow:Lcom/zeusis/widget/checkbox/ZeusisCheckbox;

    .line 84
    iget-object v2, p0, Lcom/android/server/am/CompatModeDialog;->mAlwaysShow:Lcom/zeusis/widget/checkbox/ZeusisCheckbox;

    new-instance v3, Lcom/android/server/am/CompatModeDialog$2;

    invoke-direct {v3, p0}, Lcom/android/server/am/CompatModeDialog$2;-><init>(Lcom/android/server/am/CompatModeDialog;)V

    invoke-virtual {v2, v3}, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    const v2, 0x1021034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/CompatModeDialog;->mHint:Landroid/view/View;

    .line 96
    invoke-virtual {p0}, Lcom/android/server/am/CompatModeDialog;->updateControls()V

    .line 48
    return-void
.end method


# virtual methods
.method updateControls()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    iget-object v4, p0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 101
    iget-object v5, p0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    iget-object v6, p0, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    .line 102
    .local v1, "mode":I
    iget-object v5, p0, Lcom/android/server/am/CompatModeDialog;->mCompatEnabled:Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;

    if-ne v1, v3, :cond_1

    :goto_0
    invoke-virtual {v5, v3}, Lcom/zeusis/widget/switchbutton/ZeusisSwitchButton;->setChecked(Z)V

    .line 103
    iget-object v3, p0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    .line 104
    iget-object v5, p0, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 103
    invoke-virtual {v3, v5}, Lcom/android/server/am/CompatModePackages;->getPackageAskCompatModeLocked(Ljava/lang/String;)Z

    move-result v0

    .line 105
    .local v0, "ask":Z
    iget-object v3, p0, Lcom/android/server/am/CompatModeDialog;->mAlwaysShow:Lcom/zeusis/widget/checkbox/ZeusisCheckbox;

    invoke-virtual {v3, v0}, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;->setChecked(Z)V

    .line 106
    iget-object v3, p0, Lcom/android/server/am/CompatModeDialog;->mHint:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    :cond_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 100
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 99
    return-void

    .end local v0    # "ask":Z
    :cond_1
    move v3, v2

    .line 102
    goto :goto_0

    .line 100
    .end local v1    # "mode":I
    :catchall_0
    move-exception v2

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method
