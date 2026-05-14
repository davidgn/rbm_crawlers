.class public final Lcom/google/android/gms/internal/ads/zzhlv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhlv;


# instance fields
.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhlu;->zza:Lcom/google/android/gms/internal/ads/zzhlu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhnb;->zza(Lcom/google/android/gms/internal/ads/zzhna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhlv;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhlv;->zza:Lcom/google/android/gms/internal/ads/zzhlv;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhmw;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzhmw;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhmz;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzhmz;-><init>(Lcom/google/android/gms/internal/ads/zzhmw;[B)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhlv;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzhlv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhlv;->zza:Lcom/google/android/gms/internal/ads/zzhlv;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzhkx;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhmw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhlv;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhmz;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhmw;-><init>(Lcom/google/android/gms/internal/ads/zzhmz;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhmw;->zza(Lcom/google/android/gms/internal/ads/zzhkx;)Lcom/google/android/gms/internal/ads/zzhmw;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhmz;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzhmz;-><init>(Lcom/google/android/gms/internal/ads/zzhmw;[B)V

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzhku;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhmw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhlv;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhmz;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhmw;-><init>(Lcom/google/android/gms/internal/ads/zzhmz;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhmw;->zzb(Lcom/google/android/gms/internal/ads/zzhku;)Lcom/google/android/gms/internal/ads/zzhmw;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhmz;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzhmz;-><init>(Lcom/google/android/gms/internal/ads/zzhmw;[B)V

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzd(Lcom/google/android/gms/internal/ads/zzhmc;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhmw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhlv;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhmz;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhmw;-><init>(Lcom/google/android/gms/internal/ads/zzhmz;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhmw;->zzc(Lcom/google/android/gms/internal/ads/zzhmc;)Lcom/google/android/gms/internal/ads/zzhmw;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhmz;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzhmz;-><init>(Lcom/google/android/gms/internal/ads/zzhmw;[B)V

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zze(Lcom/google/android/gms/internal/ads/zzhlz;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhmw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhlv;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhmz;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhmw;-><init>(Lcom/google/android/gms/internal/ads/zzhmz;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhmw;->zzd(Lcom/google/android/gms/internal/ads/zzhlz;)Lcom/google/android/gms/internal/ads/zzhmw;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhmz;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzhmz;-><init>(Lcom/google/android/gms/internal/ads/zzhmw;[B)V

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzhmv;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhlv;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhmz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhmz;->zza(Lcom/google/android/gms/internal/ads/zzhmv;)Z

    move-result p1

    return p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzhmv;Lcom/google/android/gms/internal/ads/zzhdi;)Lcom/google/android/gms/internal/ads/zzhco;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhlv;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhmz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhmz;->zzb(Lcom/google/android/gms/internal/ads/zzhmv;Lcom/google/android/gms/internal/ads/zzhdi;)Lcom/google/android/gms/internal/ads/zzhco;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzhco;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhdi;)Lcom/google/android/gms/internal/ads/zzhmv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhlv;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhmz;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhmz;->zzc(Lcom/google/android/gms/internal/ads/zzhco;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhdi;)Lcom/google/android/gms/internal/ads/zzhmv;

    move-result-object p1

    return-object p1
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzhmv;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhlv;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhmz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhmz;->zzd(Lcom/google/android/gms/internal/ads/zzhmv;)Z

    move-result p1

    return p1
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzhmv;)Lcom/google/android/gms/internal/ads/zzhde;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhlv;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhmz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhmz;->zze(Lcom/google/android/gms/internal/ads/zzhmv;)Lcom/google/android/gms/internal/ads/zzhde;

    move-result-object p1

    return-object p1
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzhde;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhmv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhlv;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhmz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhmz;->zzf(Lcom/google/android/gms/internal/ads/zzhde;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhmv;

    move-result-object p1

    return-object p1
.end method
