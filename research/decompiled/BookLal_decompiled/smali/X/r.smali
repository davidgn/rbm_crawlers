.class public final LX/r;
.super Ld4/c;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:LX/s;


# direct methods
.method public constructor <init>(LX/s;Ld4/c;)V
    .locals 0

    iput-object p1, p0, LX/r;->c:LX/s;

    invoke-direct {p0, p2}, Ld4/c;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LX/r;->a:Ljava/lang/Object;

    iget p1, p0, LX/r;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LX/r;->b:I

    iget-object p1, p0, LX/r;->c:LX/s;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LX/s;->b(Ljava/lang/Object;Ld4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
