.class public final LX/E;
.super Ld4/c;
.source "SourceFile"


# instance fields
.field public a:LX/F;

.field public b:Ljava/io/File;

.field public c:Ljava/io/FileOutputStream;

.field public d:Ljava/io/FileOutputStream;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:LX/F;

.field public l:I


# direct methods
.method public constructor <init>(LX/F;Ld4/c;)V
    .locals 0

    iput-object p1, p0, LX/E;->f:LX/F;

    invoke-direct {p0, p2}, Ld4/c;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LX/E;->e:Ljava/lang/Object;

    iget p1, p0, LX/E;->l:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LX/E;->l:I

    iget-object p1, p0, LX/E;->f:LX/F;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, LX/F;->j(Ld4/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
