.class public final Lw4/e;
.super Ld4/c;
.source "SourceFile"


# instance fields
.field public a:Lkotlin/jvm/internal/m;

.field public b:LX/s;

.field public synthetic c:Ljava/lang/Object;

.field public d:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lw4/e;->c:Ljava/lang/Object;

    iget p1, p0, Lw4/e;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lw4/e;->d:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lw4/i;->a(Li1/D;Ld4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
