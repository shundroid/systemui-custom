.class public Lcom/android/systemui/quicksettings/NfcTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "NfcTile.java"


# instance fields
.field private mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 35
    new-instance v0, Lcom/android/systemui/quicksettings/NfcTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/NfcTile$1;-><init>(Lcom/android/systemui/quicksettings/NfcTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/NfcTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 42
    new-instance v0, Lcom/android/systemui/quicksettings/NfcTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/NfcTile$2;-><init>(Lcom/android/systemui/quicksettings/NfcTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/NfcTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 52
    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/String;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 53
    return-void
.end method

.method private getNfcState()I
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/systemui/quicksettings/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/quicksettings/NfcTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/quicksettings/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    :goto_0
    return v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const/16 v1, -0x64

    goto :goto_0
.end method

.method private updateTile()V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/NfcTile;->getNfcState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 95
    const v0, 0x7f02006b

    iput v0, p0, Lcom/android/systemui/quicksettings/NfcTile;->mDrawable:I

    .line 96
    iget-object v0, p0, Lcom/android/systemui/quicksettings/NfcTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/NfcTile;->mLabel:Ljava/lang/String;

    .line 99
    :goto_0
    return-void

    .line 89
    :pswitch_0
    const v0, 0x7f02006c

    iput v0, p0, Lcom/android/systemui/quicksettings/NfcTile;->mDrawable:I

    .line 90
    iget-object v0, p0, Lcom/android/systemui/quicksettings/NfcTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/NfcTile;->mLabel:Ljava/lang/String;

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method onPostCreate()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/NfcTile;->updateTile()V

    .line 58
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 59
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/NfcTile;->updateResources()V

    .line 64
    return-void
.end method

.method protected toggleState()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/NfcTile;->getNfcState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/quicksettings/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/quicksettings/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/NfcTile;->updateTile()V

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/NfcTile;->updateQuickSettings()V

    .line 70
    return-void
.end method
