.class Lcom/android/systemui/quicksettings/QuietHoursTile$1;
.super Ljava/lang/Object;
.source "QuietHoursTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/QuietHoursTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/QuietHoursTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/QuietHoursTile;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/systemui/quicksettings/QuietHoursTile$1;->this$0:Lcom/android/systemui/quicksettings/QuietHoursTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile$1;->this$0:Lcom/android/systemui/quicksettings/QuietHoursTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/QuietHoursTile;->access$000(Lcom/android/systemui/quicksettings/QuietHoursTile;)V

    .line 54
    return-void
.end method
