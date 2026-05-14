.class public abstract LM1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

.field public b:LC4/o;


# virtual methods
.method public final a()LC4/o;
    .locals 3

    iget-object v0, p0, LM1/b;->b:LC4/o;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, LM1/a;

    new-instance v1, LC4/o;

    iget-object v0, v0, LM1/a;->c:Landroid/view/View;

    new-instance v2, LJ2/e;

    invoke-direct {v2, v0}, LJ2/e;-><init>(Landroid/view/View;)V

    const/16 v0, 0x9

    invoke-direct {v1, v2, v0}, LC4/o;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, LM1/b;->b:LC4/o;

    :cond_0
    iget-object v0, p0, LM1/b;->b:LC4/o;

    return-object v0
.end method
