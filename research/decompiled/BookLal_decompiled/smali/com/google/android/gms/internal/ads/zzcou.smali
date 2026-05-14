.class final Lcom/google/android/gms/internal/ads/zzcou;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdmk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcoc;

.field private zzb:Lcom/google/android/gms/internal/ads/zzfhf;

.field private zzc:Lcom/google/android/gms/internal/ads/zzfgj;

.field private zzd:Lcom/google/android/gms/internal/ads/zzdhw;

.field private zze:Lcom/google/android/gms/internal/ads/zzdbg;

.field private zzf:Lcom/google/android/gms/internal/ads/zzeqn;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcoc;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcou;->zza:Lcom/google/android/gms/internal/ads/zzcoc;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdml;
    .locals 15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzd:Lcom/google/android/gms/internal/ads/zzdhw;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdhw;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzimc;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcou;->zze:Lcom/google/android/gms/internal/ads/zzdbg;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdbg;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzimc;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzf:Lcom/google/android/gms/internal/ads/zzeqn;

    const-class v1, Lcom/google/android/gms/internal/ads/zzeqn;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzimc;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcov;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcye;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcye;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzflj;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzflj;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzdaf;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzdaf;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdzf;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzdzf;-><init>()V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzd:Lcom/google/android/gms/internal/ads/zzdhw;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzcou;->zze:Lcom/google/android/gms/internal/ads/zzdbg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeot;->zza()Lcom/google/android/gms/internal/ads/zzeor;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzf:Lcom/google/android/gms/internal/ads/zzeqn;

    iget-object v13, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzb:Lcom/google/android/gms/internal/ads/zzfhf;

    iget-object v14, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzc:Lcom/google/android/gms/internal/ads/zzfgj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcou;->zza:Lcom/google/android/gms/internal/ads/zzcoc;

    const/4 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzcov;-><init>(Lcom/google/android/gms/internal/ads/zzcoc;Lcom/google/android/gms/internal/ads/zzcye;Lcom/google/android/gms/internal/ads/zzflj;Lcom/google/android/gms/internal/ads/zzdaf;Lcom/google/android/gms/internal/ads/zzdzf;Lcom/google/android/gms/internal/ads/zzdhw;Lcom/google/android/gms/internal/ads/zzdbg;Lcom/google/android/gms/internal/ads/zzeor;Lcom/google/android/gms/internal/ads/zzeqn;Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfhf;Lcom/google/android/gms/internal/ads/zzfgj;)V

    return-object v0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzfgj;)Lcom/google/android/gms/internal/ads/zzdmk;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzc:Lcom/google/android/gms/internal/ads/zzfgj;

    return-object p0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfhf;)Lcom/google/android/gms/internal/ads/zzdmk;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzb:Lcom/google/android/gms/internal/ads/zzfhf;

    return-object p0
.end method

.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzeqn;)Lcom/google/android/gms/internal/ads/zzdmk;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzf:Lcom/google/android/gms/internal/ads/zzeqn;

    return-object p0
.end method

.method public final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzdbg;)Lcom/google/android/gms/internal/ads/zzdmk;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcou;->zze:Lcom/google/android/gms/internal/ads/zzdbg;

    return-object p0
.end method

.method public final bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzdhw;)Lcom/google/android/gms/internal/ads/zzdmk;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzd:Lcom/google/android/gms/internal/ads/zzdhw;

    return-object p0
.end method

.method public final bridge synthetic zzh()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcou;->zza()Lcom/google/android/gms/internal/ads/zzdml;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzi(Lcom/google/android/gms/internal/ads/zzfgj;)Lcom/google/android/gms/internal/ads/zzdbd;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzc:Lcom/google/android/gms/internal/ads/zzfgj;

    return-object p0
.end method

.method public final synthetic zzj(Lcom/google/android/gms/internal/ads/zzfhf;)Lcom/google/android/gms/internal/ads/zzdbd;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzb:Lcom/google/android/gms/internal/ads/zzfhf;

    return-object p0
.end method
