.class public final LX/z;
.super Ld4/c;
.source "SourceFile"


# instance fields
.field public a:LX/F;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LX/F;

.field public d:I


# direct methods
.method public constructor <init>(LX/F;Ld4/c;)V
    .locals 0

    iput-object p1, p0, LX/z;->c:LX/F;

    invoke-direct {p0, p2}, Ld4/c;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LX/z;->b:Ljava/lang/Object;

    iget p1, p0, LX/z;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LX/z;->d:I

    iget-object p1, p0, LX/z;->c:LX/F;

    invoke-virtual {p1, p0}, LX/F;->e(Ld4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
