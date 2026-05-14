.class public final Lj1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/q;


# static fields
.field public static final b:Lb1/g;


# instance fields
.field public final a:LC4/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9c4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    invoke-static {v0, v1}, Lb1/g;->a(Ljava/lang/Object;Ljava/lang/String;)Lb1/g;

    move-result-object v0

    sput-object v0, Lj1/b;->b:Lb1/g;

    return-void
.end method

.method public constructor <init>(LC4/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj1/b;->a:LC4/o;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILb1/h;)Li1/p;
    .locals 2

    check-cast p1, Li1/g;

    iget-object p2, p0, Lj1/b;->a:LC4/o;

    if-eqz p2, :cond_1

    invoke-static {p1}, Li1/o;->a(Ljava/lang/Object;)Li1/o;

    move-result-object p3

    iget-object p2, p2, LC4/o;->b:Ljava/lang/Object;

    check-cast p2, Li1/n;

    invoke-virtual {p2, p3}, Ly1/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Li1/o;->b:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p3}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Li1/g;

    if-nez v0, :cond_0

    invoke-static {p1}, Li1/o;->a(Ljava/lang/Object;)Li1/o;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ly1/h;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    sget-object p2, Lj1/b;->b:Lb1/g;

    invoke-virtual {p4, p2}, Lb1/h;->c(Lb1/g;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    new-instance p3, Li1/p;

    new-instance p4, Lc1/l;

    invoke-direct {p4, p1, p2}, Lc1/l;-><init>(Li1/g;I)V

    invoke-direct {p3, p1, p4}, Li1/p;-><init>(Lb1/e;Lc1/e;)V

    return-object p3
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Li1/g;

    const/4 p1, 0x1

    return p1
.end method
