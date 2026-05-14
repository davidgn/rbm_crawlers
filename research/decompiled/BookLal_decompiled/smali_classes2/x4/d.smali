.class public final Lx4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb4/h;


# instance fields
.field public final a:Ljava/lang/Throwable;

.field public final synthetic b:Lb4/h;


# direct methods
.method public constructor <init>(Lb4/h;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lx4/d;->a:Ljava/lang/Throwable;

    iput-object p1, p0, Lx4/d;->b:Lb4/h;

    return-void
.end method


# virtual methods
.method public final b(Lb4/g;)Lb4/h;
    .locals 1

    iget-object v0, p0, Lx4/d;->b:Lb4/h;

    invoke-interface {v0, p1}, Lb4/h;->b(Lb4/g;)Lb4/h;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lb4/g;)Lb4/f;
    .locals 1

    iget-object v0, p0, Lx4/d;->b:Lb4/h;

    invoke-interface {v0, p1}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object p1

    return-object p1
.end method

.method public final m(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lx4/d;->b:Lb4/h;

    invoke-interface {v0, p1, p2}, Lb4/h;->m(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lb4/h;)Lb4/h;
    .locals 1

    iget-object v0, p0, Lx4/d;->b:Lb4/h;

    invoke-interface {v0, p1}, Lb4/h;->n(Lb4/h;)Lb4/h;

    move-result-object p1

    return-object p1
.end method
