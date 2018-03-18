.class public Lcom/zeusis/widget/checkbox/ZeusisCheckbox;
.super Landroid/widget/CheckBox;
.source "ZeusisCheckbox.java"


# instance fields
.field private mColorOff:I

.field private mColorOn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 48
    invoke-static {}, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;->getStyle()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    const v0, -0xe43e01

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;->mColorOn:I

    const v0, -0x474545

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;->mColorOff:I

    .line 51
    return-void
.end method

.method private createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 7
    .param p1, "checkColor"    # I
    .param p2, "defaultColor"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 148
    new-array v1, v3, [I

    aput p1, v1, v5

    aput p2, v1, v6

    .line 149
    .local v1, "colors":[I
    new-array v2, v3, [[I

    .line 150
    .local v2, "states":[[I
    new-array v3, v6, [I

    const v4, 0x10100a0

    aput v4, v3, v5

    aput-object v3, v2, v5

    .line 151
    new-array v3, v5, [I

    aput-object v3, v2, v6

    .line 152
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 153
    .local v0, "colorList":Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method private static getStyle()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    const-string/jumbo v1, "persist.journeyui.theme"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 158
    .local v0, "theme":I
    if-nez v0, :cond_0

    .line 159
    const v1, 0x10304cc

    return v1

    .line 161
    :cond_0
    const v1, 0x10304cd

    return v1
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setArrowColor(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 143
    return-void
.end method

.method public setBoxBorderColor(I)V
    .locals 3
    .param p1, "colorOff"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    iput p1, p0, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;->mColorOff:I

    .line 133
    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;->mColorOn:I

    iget v2, p0, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;->mColorOff:I

    invoke-direct {p0, v1, v2}, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 134
    .local v0, "stateList":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 131
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 0
    .param p1, "checked"    # Z
    .param p2, "playAnimation"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 77
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 72
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 70
    return-void

    .line 72
    :cond_0
    const v0, 0x3e851eb8    # 0.26f

    goto :goto_0
.end method

.method public setOffColor(I)V
    .locals 0
    .param p1, "colorOff"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    return-void
.end method

.method public setOnColor(I)V
    .locals 3
    .param p1, "colorOn"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    iput p1, p0, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;->mColorOn:I

    .line 116
    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;->mColorOn:I

    iget v2, p0, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;->mColorOff:I

    invoke-direct {p0, v1, v2}, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 117
    .local v0, "stateList":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 114
    return-void
.end method

.method public setTheme(Lcom/zeusis/widget/checkbox/ZeusisCheckboxStyle;)V
    .locals 2
    .param p1, "theme"    # Lcom/zeusis/widget/checkbox/ZeusisCheckboxStyle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const v1, -0xe43e01

    .line 93
    sget-object v0, Lcom/zeusis/widget/checkbox/ZeusisCheckboxStyle;->E_CHECKBOX_STYLE_LIGHT:Lcom/zeusis/widget/checkbox/ZeusisCheckboxStyle;

    if-ne p1, v0, :cond_1

    .line 94
    const v0, -0x474545

    invoke-virtual {p0, v1, v0}, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;->setTrackBoxColor(II)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    sget-object v0, Lcom/zeusis/widget/checkbox/ZeusisCheckboxStyle;->E_CHECKBOX_STYLE_DARK:Lcom/zeusis/widget/checkbox/ZeusisCheckboxStyle;

    if-ne p1, v0, :cond_0

    .line 97
    const v0, -0x7f000001

    invoke-virtual {p0, v1, v0}, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;->setTrackBoxColor(II)V

    goto :goto_0
.end method

.method public setTrackBoxColor(II)V
    .locals 1
    .param p1, "colorOn"    # I
    .param p2, "colorOff"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 110
    .local v0, "stateList":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 108
    return-void
.end method
