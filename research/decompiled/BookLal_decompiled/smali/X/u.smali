.class public final LX/u;
.super Ld4/c;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:LX/F;

.field public c:Lt4/l;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:LX/F;

.field public f:I


# direct methods
.method public constructor <init>(LX/F;Ld4/c;)V
    .locals 0

    iput-object p1, p0, LX/u;->e:LX/F;

    invoke-direct {p0, p2}, Ld4/c;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LX/u;->d:Ljava/lang/Object;

    iget p1, p0, LX/u;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LX/u;->f:I

    iget-object p1, p0, LX/u;->e:LX/F;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, LX/F;->a(LX/F;LX/l;Ld4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
