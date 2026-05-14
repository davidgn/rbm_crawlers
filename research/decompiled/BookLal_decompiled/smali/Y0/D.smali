.class public final LY0/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/booklal/booklal/ChooseCategoryOfBook;


# direct methods
.method public synthetic constructor <init>(Lcom/booklal/booklal/ChooseCategoryOfBook;I)V
    .locals 0

    iput p2, p0, LY0/D;->a:I

    iput-object p1, p0, LY0/D;->b:Lcom/booklal/booklal/ChooseCategoryOfBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, LY0/D;->a:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, p0, LY0/D;->b:Lcom/booklal/booklal/ChooseCategoryOfBook;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->y:Ljava/lang/String;

    const-string v2, "g1"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->z:Ljava/lang/String;

    const-string v2, "g2"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cat"

    const-string v2, "History"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, p0, LY0/D;->b:Lcom/booklal/booklal/ChooseCategoryOfBook;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->y:Ljava/lang/String;

    const-string v2, "g1"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->z:Ljava/lang/String;

    const-string v2, "g2"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cat"

    const-string v2, "Literature"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, p0, LY0/D;->b:Lcom/booklal/booklal/ChooseCategoryOfBook;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->y:Ljava/lang/String;

    const-string v2, "g1"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->z:Ljava/lang/String;

    const-string v2, "g2"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cat"

    const-string v2, "Medical"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, p0, LY0/D;->b:Lcom/booklal/booklal/ChooseCategoryOfBook;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->y:Ljava/lang/String;

    const-string v2, "g1"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->z:Ljava/lang/String;

    const-string v2, "g2"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cat"

    const-string v2, "Maths"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, p0, LY0/D;->b:Lcom/booklal/booklal/ChooseCategoryOfBook;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->y:Ljava/lang/String;

    const-string v2, "g1"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->z:Ljava/lang/String;

    const-string v2, "g2"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cat"

    const-string v2, "Science"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, p0, LY0/D;->b:Lcom/booklal/booklal/ChooseCategoryOfBook;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->y:Ljava/lang/String;

    const-string v2, "g1"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->z:Ljava/lang/String;

    const-string v2, "g2"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cat"

    const-string v2, "ComputerScience"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :pswitch_5
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, p0, LY0/D;->b:Lcom/booklal/booklal/ChooseCategoryOfBook;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->y:Ljava/lang/String;

    const-string v2, "g1"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->z:Ljava/lang/String;

    const-string v2, "g2"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cat"

    const-string v2, "Education"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :pswitch_6
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, p0, LY0/D;->b:Lcom/booklal/booklal/ChooseCategoryOfBook;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->y:Ljava/lang/String;

    const-string v2, "g1"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->z:Ljava/lang/String;

    const-string v2, "g2"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cat"

    const-string v2, "jee"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :pswitch_7
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, p0, LY0/D;->b:Lcom/booklal/booklal/ChooseCategoryOfBook;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->y:Ljava/lang/String;

    const-string v2, "g1"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->z:Ljava/lang/String;

    const-string v2, "g2"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cat"

    const-string v2, "upsc"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :pswitch_8
    iget-object p1, p0, LY0/D;->b:Lcom/booklal/booklal/ChooseCategoryOfBook;

    invoke-virtual {p1}, Landroidx/activity/p;->onBackPressed()V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_9
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, p0, LY0/D;->b:Lcom/booklal/booklal/ChooseCategoryOfBook;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->y:Ljava/lang/String;

    const-string v2, "g1"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->z:Ljava/lang/String;

    const-string v2, "g2"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cat"

    const-string v2, "Others"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :pswitch_a
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, p0, LY0/D;->b:Lcom/booklal/booklal/ChooseCategoryOfBook;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->y:Ljava/lang/String;

    const-string v2, "g1"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->z:Ljava/lang/String;

    const-string v2, "g2"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cat"

    const-string v2, "Novels"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :pswitch_b
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, p0, LY0/D;->b:Lcom/booklal/booklal/ChooseCategoryOfBook;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->y:Ljava/lang/String;

    const-string v2, "g1"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->z:Ljava/lang/String;

    const-string v2, "g2"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cat"

    const-string v2, "Biographic"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :pswitch_c
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, p0, LY0/D;->b:Lcom/booklal/booklal/ChooseCategoryOfBook;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->y:Ljava/lang/String;

    const-string v2, "g1"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->z:Ljava/lang/String;

    const-string v2, "g2"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cat"

    const-string v2, "Art"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :pswitch_d
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, p0, LY0/D;->b:Lcom/booklal/booklal/ChooseCategoryOfBook;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->y:Ljava/lang/String;

    const-string v2, "g1"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->z:Ljava/lang/String;

    const-string v2, "g2"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cat"

    const-string v2, "Business"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_e
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, p0, LY0/D;->b:Lcom/booklal/booklal/ChooseCategoryOfBook;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->y:Ljava/lang/String;

    const-string v2, "g1"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/booklal/booklal/ChooseCategoryOfBook;->z:Ljava/lang/String;

    const-string v2, "g2"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cat"

    const-string v2, "Health"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
