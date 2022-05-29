<script setup name="Home" lang="ts">
interface Props {
  hello: string
}

const props = defineProps<Props>()

const { x, y, sourceType } = useCustomMouse()
</script>

<template>
  <div>
    <div class="h-screen space-y-4 bg-slate-100 p-8">
      <h1 class="text-3xl font-bold">
        Phoenix, Vite, Vue, Inertia, Tailwind and extras
      </h1>
      <div class="flex items-center gap-4">
        <XIcon icon="heroicons-outline:badge-check" size="2xl" />
        <p>Auto imported icons</p>
      </div>
      <div class="flex items-center gap-4">
        <XButton>Save</XButton>
        <p>Auto imported components</p>
      </div>
      <div class="flex items-center gap-4">
        <p class="font-bold">
          {{ hello }}
        </p>
        <p>Props come from phoenix</p>
      </div>
      <div
        class="rounded-md border border-primary-500 bg-gradient-to-r from-indigo-500 to-pink-500 p-4 text-4xl font-bold text-white"
      >
        Tailwind CSS - Ofcourse!!!
      </div>
      <div
        class="rounded-md border border-primary-500 bg-gradient-to-r from-indigo-500 to-pink-500 p-4 text-4xl font-bold text-white"
      >
        <p>Auto import composables</p>
        <p>x: {{ x }}</p>
        <p>y: {{ y }}</p>
        <p>sourceType: {{ sourceType }}</p>
      </div>
    </div>
  </div>
</template>
