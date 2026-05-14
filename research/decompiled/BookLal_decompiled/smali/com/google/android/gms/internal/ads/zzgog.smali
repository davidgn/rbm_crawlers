.class final synthetic Lcom/google/android/gms/internal/ads/zzgog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/pm/PackageManager$OnChecksumsReadyListener;


# instance fields
.field private final synthetic zza:Landroidx/concurrent/futures/j;


# direct methods
.method public synthetic constructor <init>(Landroidx/concurrent/futures/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgog;->zza:Landroidx/concurrent/futures/j;

    return-void
.end method


# virtual methods
.method public final synthetic onChecksumsReady(Ljava/util/List;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgog;->zza:Landroidx/concurrent/futures/j;

    const-string v1, ""

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/j;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, LM/c;->e(Ljava/lang/Object;)Landroid/content/pm/ApkChecksum;

    move-result-object v5

    invoke-static {v5}, LM/c;->a(Landroid/content/pm/ApkChecksum;)I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyh;->zzn()Lcom/google/android/gms/internal/ads/zzgyh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgyh;->zzi()Lcom/google/android/gms/internal/ads/zzgyh;

    move-result-object p1

    invoke-static {v5}, LM/c;->C(Landroid/content/pm/ApkChecksum;)[B

    move-result-object v2

    array-length v4, v2

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgyh;->zzj([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/concurrent/futures/j;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    :cond_2
    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/j;->a(Ljava/lang/Object;)V

    return-void
.end method
