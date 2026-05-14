.class public final Lb4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb4/h;
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lb4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb4/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lb4/i;->a:Lb4/i;

    return-void
.end method


# virtual methods
.method public final b(Lb4/g;)Lb4/h;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final f(Lb4/g;)Lb4/f;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final n(Lb4/h;)Lb4/h;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptyCoroutineContext"

    return-object v0
.end method
