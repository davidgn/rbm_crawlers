.class public final LY0/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lu0/y;


# direct methods
.method public synthetic constructor <init>(Lu0/y;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, LY0/t0;->a:I

    iput-object p1, p0, LY0/t0;->c:Lu0/y;

    iput-object p2, p0, LY0/t0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5

    iget p1, p0, LY0/t0;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, LY0/t0;->b:Ljava/lang/Object;

    check-cast p1, LY0/L0;

    iget-object p1, p1, LY0/L0;->e:Ljava/lang/String;

    iget-object v0, p0, LY0/t0;->c:Lu0/y;

    check-cast v0, LY0/x0;

    invoke-static {v0, p1}, LY0/x0;->h(LY0/x0;Ljava/lang/String;)Lh/f;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1

    :pswitch_0
    iget-object p1, p0, LY0/t0;->c:Lu0/y;

    check-cast p1, LY0/x0;

    iget-object v0, p1, LY0/x0;->f:Landroid/content/Context;

    check-cast v0, Lcom/booklal/booklal/ChatActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0048

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090159

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09015a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object p1, p1, LY0/x0;->f:Landroid/content/Context;

    check-cast p1, Lcom/booklal/booklal/ChatActivity;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "Delete Message"

    invoke-virtual {v4, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    new-instance v0, LY0/s0;

    const/4 v4, 0x1

    invoke-direct {v0, p1, v4}, LY0/s0;-><init>(Landroid/app/AlertDialog;I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, LA2/p;

    const/4 v2, 0x6

    invoke-direct {v0, v2, p0, p1}, LA2/p;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, LY0/s0;

    const/4 v2, 0x2

    invoke-direct {v0, p1, v2}, LY0/s0;-><init>(Landroid/app/AlertDialog;I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x0

    return p1

    :pswitch_1
    iget-object p1, p0, LY0/t0;->c:Lu0/y;

    check-cast p1, LY0/x0;

    iget-object v0, p1, LY0/x0;->f:Landroid/content/Context;

    check-cast v0, Lcom/booklal/booklal/ChatActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0048

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090159

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09015a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object p1, p1, LY0/x0;->f:Landroid/content/Context;

    check-cast p1, Lcom/booklal/booklal/ChatActivity;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "Delete Message"

    invoke-virtual {v4, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    new-instance v0, LY0/r0;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, LY0/r0;-><init>(LY0/t0;Landroid/app/AlertDialog;I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, LY0/r0;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v2}, LY0/r0;-><init>(LY0/t0;Landroid/app/AlertDialog;I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, LY0/s0;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, LY0/s0;-><init>(Landroid/app/AlertDialog;I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
