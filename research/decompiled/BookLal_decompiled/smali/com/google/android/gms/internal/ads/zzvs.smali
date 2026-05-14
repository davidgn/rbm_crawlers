.class public abstract Lcom/google/android/gms/internal/ads/zzvs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwv;


# instance fields
.field private final zza:Ljava/util/ArrayList;

.field private final zzb:Ljava/util/HashSet;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzxd;

.field private final zzd:Lcom/google/android/gms/internal/ads/zztr;

.field private zze:Landroid/os/Looper;

.field private zzf:Lcom/google/android/gms/internal/ads/zzbf;

.field private zzg:Lcom/google/android/gms/internal/ads/zzpy;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zza:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzb:Ljava/util/HashSet;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzc:Lcom/google/android/gms/internal/ads/zzxd;

    new-instance v0, Lcom/google/android/gms/internal/ads/zztr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zztr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzd:Lcom/google/android/gms/internal/ads/zztr;

    return-void
.end method


# virtual methods
.method public zzM()V
    .locals 0

    return-void
.end method

.method public abstract zza(Lcom/google/android/gms/internal/ads/zzig;)V
.end method

.method public zzc()V
    .locals 0

    return-void
.end method

.method public abstract zzd()V
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzbf;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzf:Lcom/google/android/gms/internal/ads/zzbf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zza:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzwu;

    invoke-interface {v3, p0, p1}, Lcom/google/android/gms/internal/ads/zzwu;->zza(Lcom/google/android/gms/internal/ads/zzwv;Lcom/google/android/gms/internal/ads/zzbf;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzwt;)Lcom/google/android/gms/internal/ads/zzxd;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzc:Lcom/google/android/gms/internal/ads/zzxd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzxd;->zza(ILcom/google/android/gms/internal/ads/zzwt;)Lcom/google/android/gms/internal/ads/zzxd;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(ILcom/google/android/gms/internal/ads/zzwt;)Lcom/google/android/gms/internal/ads/zzxd;
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzc:Lcom/google/android/gms/internal/ads/zzxd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzxd;->zza(ILcom/google/android/gms/internal/ads/zzwt;)Lcom/google/android/gms/internal/ads/zzxd;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzwt;)Lcom/google/android/gms/internal/ads/zztr;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzd:Lcom/google/android/gms/internal/ads/zztr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zztr;->zza(ILcom/google/android/gms/internal/ads/zzwt;)Lcom/google/android/gms/internal/ads/zztr;

    move-result-object p1

    return-object p1
.end method

.method public final zzi(ILcom/google/android/gms/internal/ads/zzwt;)Lcom/google/android/gms/internal/ads/zztr;
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzd:Lcom/google/android/gms/internal/ads/zztr;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zztr;->zza(ILcom/google/android/gms/internal/ads/zzwt;)Lcom/google/android/gms/internal/ads/zztr;

    move-result-object p1

    return-object p1
.end method

.method public final zzj()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzb:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzk()Lcom/google/android/gms/internal/ads/zzpy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzg:Lcom/google/android/gms/internal/ads/zzpy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final zzl(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzxe;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzc:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzxd;->zzb(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzxe;)V

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzxe;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzc:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxd;->zzc(Lcom/google/android/gms/internal/ads/zzxe;)V

    return-void
.end method

.method public final zzn(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzts;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzd:Lcom/google/android/gms/internal/ads/zztr;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zztr;->zzb(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzts;)V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzts;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzd:Lcom/google/android/gms/internal/ads/zztr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zztr;->zzc(Lcom/google/android/gms/internal/ads/zzts;)V

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzwu;Lcom/google/android/gms/internal/ads/zzig;Lcom/google/android/gms/internal/ads/zzpy;)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvs;->zze:Landroid/os/Looper;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgsj;->zza(Z)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzg:Lcom/google/android/gms/internal/ads/zzpy;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzf:Lcom/google/android/gms/internal/ads/zzbf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvs;->zza:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvs;->zze:Landroid/os/Looper;

    if-nez v1, :cond_2

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zze:Landroid/os/Looper;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzb:Ljava/util/HashSet;

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzvs;->zza(Lcom/google/android/gms/internal/ads/zzig;)V

    return-void

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzvs;->zzq(Lcom/google/android/gms/internal/ads/zzwu;)V

    invoke-interface {p1, p0, p3}, Lcom/google/android/gms/internal/ads/zzwu;->zza(Lcom/google/android/gms/internal/ads/zzwv;Lcom/google/android/gms/internal/ads/zzbf;)V

    :cond_3
    return-void
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzwu;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zze:Landroid/os/Looper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzb:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvs;->zzM()V

    :cond_0
    return-void
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzwu;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzb:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvs;->zzc()V

    :cond_0
    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzwu;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zza:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvs;->zze:Landroid/os/Looper;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzf:Lcom/google/android/gms/internal/ads/zzbf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzg:Lcom/google/android/gms/internal/ads/zzpy;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzb:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvs;->zzd()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzvs;->zzr(Lcom/google/android/gms/internal/ads/zzwu;)V

    return-void
.end method
