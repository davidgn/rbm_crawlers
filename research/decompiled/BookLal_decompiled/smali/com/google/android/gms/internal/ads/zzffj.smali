.class public final Lcom/google/android/gms/internal/ads/zzffj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbz;
.implements Lcom/google/android/gms/internal/ads/zzddv;
.implements Lcom/google/android/gms/internal/ads/zzfgy;
.implements Lcom/google/android/gms/ads/internal/overlay/zzr;
.implements Lcom/google/android/gms/internal/ads/zzden;
.implements Lcom/google/android/gms/internal/ads/zzdcm;
.implements Lcom/google/android/gms/internal/ads/zzdkd;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzflo;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zze:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzf:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzg:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzh:Ljava/util/concurrent/atomic/AtomicReference;

.field private zzi:Lcom/google/android/gms/internal/ads/zzffj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzflo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzh:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzi:Lcom/google/android/gms/internal/ads/zzffj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffj;->zza:Lcom/google/android/gms/internal/ads/zzflo;

    return-void
.end method

.method public static zzn(Lcom/google/android/gms/internal/ads/zzffj;)Lcom/google/android/gms/internal/ads/zzffj;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzffj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffj;->zza:Lcom/google/android/gms/internal/ads/zzflo;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzffj;-><init>(Lcom/google/android/gms/internal/ads/zzflo;)V

    iput-object p0, v0, Lcom/google/android/gms/internal/ads/zzffj;->zzi:Lcom/google/android/gms/internal/ads/zzffj;

    return-object v0
.end method


# virtual methods
.method public final zzdJ(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzi:Lcom/google/android/gms/internal/ads/zzffj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzffj;->zzdJ(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfey;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfey;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgq;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfgp;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfez;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfez;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgq;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfgp;)V

    return-void
.end method

.method public final zzdR()V
    .locals 0

    return-void
.end method

.method public final zzdT()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzi:Lcom/google/android/gms/internal/ads/zzffj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffj;->zzdT()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfeu;->zza:Lcom/google/android/gms/internal/ads/zzfeu;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgq;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfgp;)V

    return-void
.end method

.method public final zzdU(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzi:Lcom/google/android/gms/internal/ads/zzffj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzffj;->zzdU(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzffa;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzffa;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgq;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfgp;)V

    return-void
.end method

.method public final zzdo()V
    .locals 0

    return-void
.end method

.method public final zzdp()V
    .locals 0

    return-void
.end method

.method public final zzdq()V
    .locals 0

    return-void
.end method

.method public final zzdu()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzi:Lcom/google/android/gms/internal/ads/zzffj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffj;->zzdu()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzffg;->zza:Lcom/google/android/gms/internal/ads/zzffg;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgq;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfgp;)V

    return-void
.end method

.method public final zzdv()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzi:Lcom/google/android/gms/internal/ads/zzffj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffj;->zzdv()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfev;->zza:Lcom/google/android/gms/internal/ads/zzfev;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgq;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfgp;)V

    return-void
.end method

.method public final zzdw()V
    .locals 0

    return-void
.end method

.method public final zzdx()V
    .locals 0

    return-void
.end method

.method public final zzdy()V
    .locals 0

    return-void
.end method

.method public final zzdz()V
    .locals 0

    return-void
.end method

.method public final zzh()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzi:Lcom/google/android/gms/internal/ads/zzffj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffj;->zzh()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfew;->zza:Lcom/google/android/gms/internal/ads/zzfew;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgq;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfgp;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzffe;->zza:Lcom/google/android/gms/internal/ads/zzffe;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgq;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfgp;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfff;->zza:Lcom/google/android/gms/internal/ads/zzfff;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgq;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfgp;)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzi:Lcom/google/android/gms/internal/ads/zzffj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzffj;->zzj(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzffb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzffb;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgq;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfgp;)V

    return-void
.end method

.method public final zzl()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzi:Lcom/google/android/gms/internal/ads/zzffj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffj;->zzl()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfet;->zza:Lcom/google/android/gms/internal/ads/zzfet;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgq;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfgp;)V

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/ads/internal/client/zzt;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzi:Lcom/google/android/gms/internal/ads/zzffj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzffj;->zzm(Lcom/google/android/gms/ads/internal/client/zzt;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzffc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzffc;-><init>(Lcom/google/android/gms/ads/internal/client/zzt;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgq;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfgp;)V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzbfr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzbfv;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/ads/internal/overlay/zzr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/ads/internal/client/zzdq;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzfsb;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzh:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzbfo;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzi:Lcom/google/android/gms/internal/ads/zzffj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzffj;->zzt(Lcom/google/android/gms/internal/ads/zzbfo;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfex;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfex;-><init>(Lcom/google/android/gms/internal/ads/zzbfo;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgq;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfgp;)V

    return-void
.end method

.method public final zzu()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzi:Lcom/google/android/gms/internal/ads/zzffj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffj;->zzu()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zza:Lcom/google/android/gms/internal/ads/zzflo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflo;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzffd;->zza:Lcom/google/android/gms/internal/ads/zzffd;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgq;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfgp;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzffh;->zza:Lcom/google/android/gms/internal/ads/zzffh;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgq;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfgp;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzh:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzffi;->zza:Lcom/google/android/gms/internal/ads/zzffi;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgq;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfgp;)V

    return-void
.end method

.method public final zzv(Lcom/google/android/gms/internal/ads/zzfgy;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzffj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzi:Lcom/google/android/gms/internal/ads/zzffj;

    return-void
.end method
