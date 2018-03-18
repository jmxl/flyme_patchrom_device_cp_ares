.class public Lcom/zeusis/widget/radio/ZeusisRadioGroup;
.super Landroid/widget/RadioGroup;
.source "ZeusisRadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeusis/widget/radio/ZeusisRadioGroup$CheckedStateTracker;,
        Lcom/zeusis/widget/radio/ZeusisRadioGroup$LayoutParams;,
        Lcom/zeusis/widget/radio/ZeusisRadioGroup$OnCheckedChangeListener;,
        Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;
    }
.end annotation


# instance fields
.field private mCheckedId:I

.field private mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeListener:Lcom/zeusis/widget/radio/ZeusisRadioGroup$OnCheckedChangeListener;

.field private mPassThroughListener:Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;

.field private mProtectFromCheckedChange:Z


# direct methods
.method static synthetic -get0(Lcom/zeusis/widget/radio/ZeusisRadioGroup;)I
    .locals 1

    iget v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mCheckedId:I

    return v0
.end method

.method static synthetic -get1(Lcom/zeusis/widget/radio/ZeusisRadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/zeusis/widget/radio/ZeusisRadioGroup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mProtectFromCheckedChange:Z

    return v0
.end method

.method static synthetic -set0(Lcom/zeusis/widget/radio/ZeusisRadioGroup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mProtectFromCheckedChange:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/zeusis/widget/radio/ZeusisRadioGroup;I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/zeusis/widget/radio/ZeusisRadioGroup;IZ)V
    .locals 0
    .param p1, "viewId"    # I
    .param p2, "checked"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mCheckedId:I

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mProtectFromCheckedChange:Z

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 26
    invoke-direct {p0}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mCheckedId:I

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mProtectFromCheckedChange:Z

    .line 31
    invoke-direct {p0}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->init()V

    .line 29
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    new-instance v0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$CheckedStateTracker;

    invoke-direct {v0, p0, v1}, Lcom/zeusis/widget/radio/ZeusisRadioGroup$CheckedStateTracker;-><init>(Lcom/zeusis/widget/radio/ZeusisRadioGroup;Lcom/zeusis/widget/radio/ZeusisRadioGroup$CheckedStateTracker;)V

    iput-object v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 36
    new-instance v0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/zeusis/widget/radio/ZeusisRadioGroup;Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;)V

    iput-object v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mPassThroughListener:Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;

    .line 37
    iget-object v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mPassThroughListener:Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/RadioGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 34
    return-void
.end method

.method private setCheckedId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mCheckedId:I

    .line 139
    iget-object v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mOnCheckedChangeListener:Lcom/zeusis/widget/radio/ZeusisRadioGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mOnCheckedChangeListener:Lcom/zeusis/widget/radio/ZeusisRadioGroup$OnCheckedChangeListener;

    iget v1, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mCheckedId:I

    invoke-interface {v0, p0, v1}, Lcom/zeusis/widget/radio/ZeusisRadioGroup$OnCheckedChangeListener;->onCheckedChanged(Lcom/zeusis/widget/radio/ZeusisRadioGroup;I)V

    .line 137
    :cond_0
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, "checkedView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 147
    nop

    nop

    .end local v0    # "checkedView":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 144
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 61
    instance-of v1, p1, Landroid/widget/RadioButton;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 62
    nop

    nop

    .line 63
    .local v0, "button":Landroid/widget/RadioButton;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iput-boolean v4, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mProtectFromCheckedChange:Z

    .line 65
    iget v1, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mCheckedId:I

    if-eq v1, v3, :cond_0

    .line 66
    iget v1, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mCheckedId:I

    invoke-direct {p0, v1, v2}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->setCheckedStateForView(IZ)V

    .line 68
    :cond_0
    iput-boolean v2, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mProtectFromCheckedChange:Z

    .line 69
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->setCheckedId(I)V

    .line 90
    .end local v0    # "button":Landroid/widget/RadioButton;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 60
    return-void

    .line 71
    :cond_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 72
    nop

    nop

    invoke-virtual {p0, v1}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->findRadioButton(Landroid/view/ViewGroup;)Landroid/widget/RadioButton;

    move-result-object v0

    .line 73
    .restart local v0    # "button":Landroid/widget/RadioButton;
    new-instance v1, Lcom/zeusis/widget/radio/ZeusisRadioGroup$1;

    invoke-direct {v1, p0, v0}, Lcom/zeusis/widget/radio/ZeusisRadioGroup$1;-><init>(Lcom/zeusis/widget/radio/ZeusisRadioGroup;Landroid/widget/RadioButton;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    iput-boolean v4, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mProtectFromCheckedChange:Z

    .line 82
    iget v1, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mCheckedId:I

    if-eq v1, v3, :cond_3

    .line 83
    iget v1, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mCheckedId:I

    invoke-direct {p0, v1, v2}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->setCheckedStateForView(IZ)V

    .line 85
    :cond_3
    iput-boolean v2, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mProtectFromCheckedChange:Z

    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->setCheckedId(I)V

    goto :goto_0
.end method

.method public check(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, -0x1

    .line 122
    if-eq p1, v2, :cond_0

    iget v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mCheckedId:I

    if-ne p1, v0, :cond_0

    .line 123
    return-void

    .line 126
    :cond_0
    iget v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mCheckedId:I

    if-eq v0, v2, :cond_1

    .line 127
    iget v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mCheckedId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->setCheckedStateForView(IZ)V

    .line 130
    :cond_1
    if-eq p1, v2, :cond_2

    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->setCheckedStateForView(IZ)V

    .line 134
    :cond_2
    invoke-direct {p0, p1}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->setCheckedId(I)V

    .line 120
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 200
    instance-of v0, p1, Lcom/zeusis/widget/radio/ZeusisRadioGroup$LayoutParams;

    return v0
.end method

.method public clearCheck()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->check(I)V

    .line 175
    return-void
.end method

.method public findRadioButton(Landroid/view/ViewGroup;)Landroid/widget/RadioButton;
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 97
    const/4 v2, 0x0

    .line 98
    .local v2, "resBtn":Landroid/widget/RadioButton;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 99
    .local v1, "len":I
    const/4 v0, 0x0

    .end local v2    # "resBtn":Landroid/widget/RadioButton;
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/RadioButton;

    if-eqz v3, :cond_1

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 99
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->findRadioButton(Landroid/view/ViewGroup;)Landroid/widget/RadioButton;

    goto :goto_1

    .line 106
    :cond_2
    return-object v2
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 205
    new-instance v0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/zeusis/widget/radio/ZeusisRadioGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getCheckedRadioButtonId()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mCheckedId:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 48
    invoke-super {p0}, Landroid/widget/RadioGroup;->onFinishInflate()V

    .line 51
    iget v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 52
    iput-boolean v2, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mProtectFromCheckedChange:Z

    .line 53
    iget v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mCheckedId:I

    invoke-direct {p0, v0, v2}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->setCheckedStateForView(IZ)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mProtectFromCheckedChange:Z

    .line 55
    iget v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mCheckedId:I

    invoke-direct {p0, v0}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->setCheckedId(I)V

    .line 47
    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/zeusis/widget/radio/ZeusisRadioGroup$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/zeusis/widget/radio/ZeusisRadioGroup$OnCheckedChangeListener;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mOnCheckedChangeListener:Lcom/zeusis/widget/radio/ZeusisRadioGroup$OnCheckedChangeListener;

    .line 187
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->mPassThroughListener:Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;->-set0(Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 41
    return-void
.end method
