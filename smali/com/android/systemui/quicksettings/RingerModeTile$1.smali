.class Lcom/android/systemui/quicksettings/RingerModeTile$1;
.super Ljava/lang/Object;
.source "RingerModeTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/RingerModeTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/RingerModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/RingerModeTile;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/systemui/quicksettings/RingerModeTile$1;->this$0:Lcom/android/systemui/quicksettings/RingerModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile$1;->this$0:Lcom/android/systemui/quicksettings/RingerModeTile;

    invoke-virtual {v0}, Lcom/android/systemui/quicksettings/RingerModeTile;->toggleState()V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile$1;->this$0:Lcom/android/systemui/quicksettings/RingerModeTile;

    invoke-virtual {v0}, Lcom/android/systemui/quicksettings/RingerModeTile;->updateResources()V

    .line 64
    return-void
.end method
