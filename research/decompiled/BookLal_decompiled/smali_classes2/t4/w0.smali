.class public final Lt4/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb4/f;
.implements Lb4/g;


# static fields
.field public static final a:Lt4/w0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt4/w0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lt4/w0;->a:Lt4/w0;

    return-void
.end method


# virtual methods
.method public final b(Lb4/g;)Lb4/h;
    .locals 0

    invoke-static {p0, p1}, LZ2/l;->H(Lb4/f;Lb4/g;)Lb4/h;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lb4/g;)Lb4/f;
    .locals 0

    invoke-static {p0, p1}, LZ2/l;->w(Lb4/f;Lb4/g;)Lb4/f;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Lb4/g;
    .locals 0

    return-object p0
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
