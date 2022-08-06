import TomSelect from 'tom-select'

const initTomSelect = () => {
  new TomSelect("[data-behavior='tom-select']",{
    create: true,
    sortField: {
      field: "text",
      direction: "asc"
    }
  });
}

export { initTomSelect }
