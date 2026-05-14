.class public abstract Lb4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb4/f;


# instance fields
.field public final a:Lb4/g;


# direct methods
.method public constructor <init>(Lb4/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb4/a;->a:Lb4/g;

    return-void
.end method


# virtual methods
.method public b(Lb4/g;)Lb4/h;
    .locals 0

    invoke-static {p0, p1}, LZ2/l;->H(Lb4/f;Lb4/g;)Lb4/h;

    move-result-object p1

    return-object p1
.end method

.method public f(Lb4/g;)Lb4/f;
    .locals 0

    invoke-static {p0, p1}, LZ2/l;->w(Lb4/f;Lb4/g;)Lb4/f;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Lb4/g;
    .locals 1

    iget-object v0, p0, Lb4/a;->a:Lb4/g;

    return-object v0
.end method

.method public final m(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p2, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lb4/h;)Lb4/h;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lb4/i;->a:Lb4/i;

    if-ne p1, v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    sget-object v0, Lb4/b;->c:Lb4/b;

    invoke-interface {p1, p0, v0}, Lb4/h;->m(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb4/h;

    :goto_0
    return-object p1
.end method
