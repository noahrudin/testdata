.class Lcom/growthbeat/message/view/PlainMessageFragment$1;
.super Ljava/lang/Object;
.source "PlainMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/message/view/PlainMessageFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthbeat/message/view/PlainMessageFragment;

.field final synthetic val$positiveButton:Lcom/growthbeat/message/model/PlainButton;


# direct methods
.method constructor <init>(Lcom/growthbeat/message/view/PlainMessageFragment;Lcom/growthbeat/message/model/PlainButton;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/growthbeat/message/view/PlainMessageFragment$1;->this$0:Lcom/growthbeat/message/view/PlainMessageFragment;

    iput-object p2, p0, Lcom/growthbeat/message/view/PlainMessageFragment$1;->val$positiveButton:Lcom/growthbeat/message/model/PlainButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 71
    invoke-static {}, Lcom/growthbeat/message/GrowthMessage;->getInstance()Lcom/growthbeat/message/GrowthMessage;

    move-result-object p1

    iget-object p2, p0, Lcom/growthbeat/message/view/PlainMessageFragment$1;->val$positiveButton:Lcom/growthbeat/message/model/PlainButton;

    iget-object v0, p0, Lcom/growthbeat/message/view/PlainMessageFragment$1;->this$0:Lcom/growthbeat/message/view/PlainMessageFragment;

    invoke-static {v0}, Lcom/growthbeat/message/view/PlainMessageFragment;->access$000(Lcom/growthbeat/message/view/PlainMessageFragment;)Lcom/growthbeat/message/model/PlainMessage;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/growthbeat/message/GrowthMessage;->selectButton(Lcom/growthbeat/message/model/Button;Lcom/growthbeat/message/model/Message;)V

    .line 72
    iget-object p1, p0, Lcom/growthbeat/message/view/PlainMessageFragment$1;->this$0:Lcom/growthbeat/message/view/PlainMessageFragment;

    invoke-virtual {p1}, Lcom/growthbeat/message/view/PlainMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/growthbeat/message/view/PlainMessageFragment$1;->this$0:Lcom/growthbeat/message/view/PlainMessageFragment;

    invoke-virtual {p1}, Lcom/growthbeat/message/view/PlainMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method
