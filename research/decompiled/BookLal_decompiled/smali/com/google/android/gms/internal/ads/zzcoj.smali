.class final Lcom/google/android/gms/internal/ads/zzcoj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcvu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcoc;

.field private zzb:Lcom/google/android/gms/internal/ads/zzfhf;

.field private zzc:Lcom/google/android/gms/internal/ads/zzfgj;

.field private zzd:Lcom/google/android/gms/internal/ads/zzdhw;

.field private zze:Lcom/google/android/gms/internal/ads/zzdbg;

.field private zzf:Lcom/google/android/gms/internal/ads/zzeqn;

.field private zzg:Lcom/google/android/gms/internal/ads/zzcwq;

.field private zzh:Lcom/google/android/gms/internal/ads/zzeor;

.field private zzi:Lcom/google/android/gms/internal/ads/zzcun;

.field private zzj:Lcom/google/android/gms/internal/ads/zzdnc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcoc;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zza:Lcom/google/android/gms/internal/ads/zzcoc;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcvv;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcoj;->zzd:Lcom/google/android/gms/internal/ads/zzdhw;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdhw;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzimc;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcoj;->zze:Lcom/google/android/gms/internal/ads/zzdbg;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdbg;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzimc;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcoj;->zzf:Lcom/google/android/gms/internal/ads/zzeqn;

    const-class v2, Lcom/google/android/gms/internal/ads/zzeqn;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzimc;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcoj;->zzg:Lcom/google/android/gms/internal/ads/zzcwq;

    const-class v2, Lcom/google/android/gms/internal/ads/zzcwq;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzimc;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcoj;->zzh:Lcom/google/android/gms/internal/ads/zzeor;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeot;->zza()Lcom/google/android/gms/internal/ads/zzeor;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcoj;->zzh:Lcom/google/android/gms/internal/ads/zzeor;

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcoj;->zzi:Lcom/google/android/gms/internal/ads/zzcun;

    const-class v2, Lcom/google/android/gms/internal/ads/zzcun;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzimc;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcoj;->zzj:Lcom/google/android/gms/internal/ads/zzdnc;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdnc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzimc;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcoj;->zza:Lcom/google/android/gms/internal/ads/zzcoc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcok;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzcoj;->zzi:Lcom/google/android/gms/internal/ads/zzcun;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzcoj;->zzj:Lcom/google/android/gms/internal/ads/zzdnc;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcye;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzcye;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzflj;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzflj;-><init>()V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzdaf;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzdaf;-><init>()V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzdzf;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzdzf;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzcoj;->zzd:Lcom/google/android/gms/internal/ads/zzdhw;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzcoj;->zze:Lcom/google/android/gms/internal/ads/zzdbg;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzcoj;->zzh:Lcom/google/android/gms/internal/ads/zzeor;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzcoj;->zzf:Lcom/google/android/gms/internal/ads/zzeqn;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzcoj;->zzg:Lcom/google/android/gms/internal/ads/zzcwq;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcoj;->zzb:Lcom/google/android/gms/internal/ads/zzfhf;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcoj;->zzc:Lcom/google/android/gms/internal/ads/zzfgj;

    const/16 v16, 0x0

    move-object/from16 v18, v3

    move-object v3, v1

    move-object/from16 v17, v2

    invoke-direct/range {v3 .. v18}, Lcom/google/android/gms/internal/ads/zzcok;-><init>(Lcom/google/android/gms/internal/ads/zzcoc;Lcom/google/android/gms/internal/ads/zzcun;Lcom/google/android/gms/internal/ads/zzdnc;Lcom/google/android/gms/internal/ads/zzcye;Lcom/google/android/gms/internal/ads/zzflj;Lcom/google/android/gms/internal/ads/zzdaf;Lcom/google/android/gms/internal/ads/zzdzf;Lcom/google/android/gms/internal/ads/zzdhw;Lcom/google/android/gms/internal/ads/zzdbg;Lcom/google/android/gms/internal/ads/zzeor;Lcom/google/android/gms/internal/ads/zzeqn;Lcom/google/android/gms/internal/ads/zzcwq;Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfhf;Lcom/google/android/gms/internal/ads/zzfgj;)V

    return-object v1
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzfgj;)Lcom/google/android/gms/internal/ads/zzcvu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzc:Lcom/google/android/gms/internal/ads/zzfgj;

    return-object p0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfhf;)Lcom/google/android/gms/internal/ads/zzcvu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzb:Lcom/google/android/gms/internal/ads/zzfhf;

    return-object p0
.end method

.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzdnc;)Lcom/google/android/gms/internal/ads/zzcvu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzj:Lcom/google/android/gms/internal/ads/zzdnc;

    return-object p0
.end method

.method public final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzcun;)Lcom/google/android/gms/internal/ads/zzcvu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzi:Lcom/google/android/gms/internal/ads/zzcun;

    return-object p0
.end method

.method public final bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzeor;)Lcom/google/android/gms/internal/ads/zzcvu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzh:Lcom/google/android/gms/internal/ads/zzeor;

    return-object p0
.end method

.method public final bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzcwq;)Lcom/google/android/gms/internal/ads/zzcvu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzg:Lcom/google/android/gms/internal/ads/zzcwq;

    return-object p0
.end method

.method public final bridge synthetic zzh()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcoj;->zza()Lcom/google/android/gms/internal/ads/zzcvv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzi(Lcom/google/android/gms/internal/ads/zzfgj;)Lcom/google/android/gms/internal/ads/zzdbd;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzc:Lcom/google/android/gms/internal/ads/zzfgj;

    return-object p0
.end method

.method public final synthetic zzj(Lcom/google/android/gms/internal/ads/zzfhf;)Lcom/google/android/gms/internal/ads/zzdbd;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzb:Lcom/google/android/gms/internal/ads/zzfhf;

    return-object p0
.end method

.method public final bridge synthetic zzk(Lcom/google/android/gms/internal/ads/zzeqn;)Lcom/google/android/gms/internal/ads/zzcvu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzf:Lcom/google/android/gms/internal/ads/zzeqn;

    return-object p0
.end method

.method public final bridge synthetic zzl(Lcom/google/android/gms/internal/ads/zzdbg;)Lcom/google/android/gms/internal/ads/zzcvu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zze:Lcom/google/android/gms/internal/ads/zzdbg;

    return-object p0
.end method

.method public final bridge synthetic zzm(Lcom/google/android/gms/internal/ads/zzdhw;)Lcom/google/android/gms/internal/ads/zzcvu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzd:Lcom/google/android/gms/internal/ads/zzdhw;

    return-object p0
.end method
