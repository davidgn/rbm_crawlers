.class public final Lh/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lh/e;

.field public final synthetic b:Lh/b;


# direct methods
.method public constructor <init>(Lh/b;Lh/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/a;->b:Lh/b;

    iput-object p2, p0, Lh/a;->a:Lh/e;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lh/a;->b:Lh/b;

    iget-object p2, p1, Lh/b;->n:Landroid/content/DialogInterface$OnClickListener;

    iget-object p4, p0, Lh/a;->a:Lh/e;

    iget-object p5, p4, Lh/e;->b:Lh/f;

    invoke-interface {p2, p5, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-boolean p1, p1, Lh/b;->o:Z

    if-nez p1, :cond_0

    iget-object p1, p4, Lh/e;->b:Lh/f;

    invoke-virtual {p1}, Lh/B;->dismiss()V

    :cond_0
    return-void
.end method
